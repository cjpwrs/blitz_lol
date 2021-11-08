defmodule BlitzLol.Summoners do
  @moduledoc """
  Context module for interacting with summoners
  """
  alias BlitzLol.{
    RiotClient,
    Summoners.Region
  }

  require Logger
  import Mockery.Macro

  @typedoc """
  A region defined by the Riot API. Can be one of `br1`, `eun1`, `euw1`, `jp1`, `kr`,
  `la1`, `la2`, `na1`, `oc1`, `ru`, `tr1`
  """
  @type region_type :: String.t()

  @doc """
  Returns a list of summoners that a summoner has played with in their last 5 matches.

  The summoners will then be monitored for the next hour, and will check for a newly
  completed match every minute. If a new match is detected, then the summoner will
  be logged out along with the match they completed.

  Example request:
  ```elixir
  track_recent_summoners_by_summoner_name("na1", "mills")
  ```


  Example response:
  ```elixir
  {:ok,
    ["Tom The Killer", "Jeam kai", "styrofoamcond0m", "ZubatUsedLowKick", "Krhaal",
      "Snytz", "Kamstuh", "Nef", "Rogue Armadillo", "greNinjaSquid", "esterxk",
      "the derpy guy", "tamish3", "BigSid14", "Eurynnome", "Madarame Ikkaku",
      "Foxiest Boxes", "ThyneBowlCut", "LOAFman2020", "EXP3RIENCE", "Lóng gone",
      "JoshMcDooDoo", "Slain", "Flzcko", "1HPNotEvenClose", "Picheese", "nex991",
      "HerbalHelper25", "Kosher Dubstep", "StanislawLeafrak", "EmErEldSquEd",
      "TheFilipinosMom", "Andpv", "SauceZzz", "Chef Pasquale", "NO69U",
      "ExpIosìon", "Raghadast", "Gugulaka", "PANDAMAN3659", "Deleted282"]}
  ```
  """
  @spec track_recent_summoners_by_summoner_name(region_type(), String.t()) ::
          {:ok, list(String.t())} | {:error, any()}
  def track_recent_summoners_by_summoner_name(_region, ""),
    do: {:error, "Summoner name cannot be empty"}

  def track_recent_summoners_by_summoner_name(_region, nil),
    do: {:error, "Summoner name cannot be nil"}

  def track_recent_summoners_by_summoner_name(region, summoner_name) do
    with {:ok, _} <- Region.validate_region(region),
         routing_value = Region.get_routing_key_for_region(region),
         {:ok, current_summoner} <- riot_client().fetch_summoner(region, summoner_name),
         {:ok, match_ids} <-
           riot_client().fetch_matches(routing_value, current_summoner["puuid"], %{
             start: 0,
             count: 5
           }),
         {:ok, summoners} <-
           get_summoners_played_with_recently(current_summoner["puuid"], routing_value, match_ids) do
      Task.start(fn -> track_summoners_for_next_hour(summoners, routing_value) end)

      summoner_names = Enum.map(summoners, & &1.name)

      {:ok, summoner_names}
    else
      {:error, error} ->
        Logger.error(error)
        {:error, error}
    end
  end

  defp get_summoners_played_with_recently(current_summoner_puuid, routing_value, match_ids) do
    summoners =
      Enum.reduce(match_ids, [], fn match_id, acc ->
        case riot_client().fetch_match(routing_value, match_id) do
          {:ok, match} ->
            info = Map.get(match, "info", %{})
            raw_participants = Map.get(info, "participants", [])

            formatted_participants = build_participants(raw_participants)

            acc ++ formatted_participants

          {:error, error} ->
            Logger.warn(
              "#{__MODULE__}.get_summoners_played_with_recently received the following error: #{inspect(error)}"
            )

            acc
        end
      end)

    unique_summoners =
      summoners
      |> Enum.uniq_by(& &1.puuid)
      |> Enum.reject(&(&1.puuid == current_summoner_puuid))

    {:ok, unique_summoners}
  end

  defp build_participants(raw_participants) do
    Enum.map(raw_participants, fn raw_participant ->
      %{
        puuid: Map.get(raw_participant, "puuid"),
        name: Map.get(raw_participant, "summonerName")
      }
    end)
  end

  defp track_summoners_for_next_hour(summoners, routing_value) do
    match_end_time = current_unix_time()

    Enum.each(summoners, fn summoner ->
      Task.start(fn -> check_for_recent_matches(summoner, 1, match_end_time, routing_value) end)

      # spacing out requests to avoid hitting rate limit on riot api
      :timer.sleep(500)
    end)
  end

  defp check_for_recent_matches(summoner, count, match_end_time, routing_value) do
    receive do
    after
      60_000 ->
        case riot_client().fetch_matches(routing_value, summoner.puuid, %{
               start: 0,
               count: 1,
               startTime: match_end_time
             }) do
          {:ok, matches} ->
            if length(matches) > 0 do
              Logger.info("Summoner #{summoner.name} completed match #{List.first(matches)}")
            end

          {:error, error} ->
            Logger.warn(
              "Recieved error when looking up matches for #{summoner.name}: #{inspect(error)}"
            )

            {:error, error}
        end

        if count < 60,
          do: check_for_recent_matches(summoner, count + 1, current_unix_time(), routing_value)
    end
  end

  defp current_unix_time do
    DateTime.utc_now()
    |> DateTime.to_unix()
  end

  defp riot_client, do: mockable(RiotClient, by: BlitzLol.RiotClientMock)
end
