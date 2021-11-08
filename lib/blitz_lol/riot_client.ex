defmodule BlitzLol.RiotClient do
  @moduledoc """
  Client for making requests against the Riot API
  """

  @typedoc """
  A region defined by the Riot API. Can be one of `br1`, `eun1`, `euw1`, `jp1`, `kr`,
  `la1`, `la2`, `na1`, `oc1`, `ru`, `tr1`
  """
  @type region_type :: String.t()

  @typedoc """
  A routing value defined by the Riot API. Can be one of `americas`, `asia`, or `europe`
  """
  @type routing_value_type :: String.t()

  @doc """
  Fetches a summoner from the Riot API

  Example request:
  ```elixir
  fetch_summoner("na1", "mills")
  ```

  Example response:
  ```elixir
  {:ok,
      %{
        "accountId" => "uiEWb5xUaBh6JrbLgc7DBM05MnKG6VXX2lDjicVlU10lGg",
        "id" => "uG3RHUMvuUPzq7fuJF8IdslZt8gzxslNxwgX91GdLUHLtxk",
        "name" => "Mills",
        "profileIconId" => 940,
        "puuid" =>
          "WcHwXcrQJbyqgnsXGcYlvTrEPhAcB2e11pofFCioEcKEwEkRMaMD9qrYIkzz5-MVx4q6tZZsjBIBxA",
        "revisionDate" => 1_636_252_885_672,
        "summonerLevel" => 245
      }}
  """
  @spec fetch_summoner(region_type(), String.t()) :: {:ok, map} | {:error, any()}
  def fetch_summoner(region, summoner_name) do
    request_path = "/summoner/v4/summoners/by-name/#{summoner_name}"
    request_url = build_url(region, request_path)

    get(request_url)
  end

  @doc """
  Fetches a match from the Riot API

  Example request:
  ```elixir
  fetch_match("americas", "NA1_4095008822")
  ```

  Example response:
  ```elixir
  {:ok,
      %{
        "info" => %{
          "participants" => [%{...}]
        },
        "metadata" => %{}
      }}
  """
  @spec fetch_match(routing_value_type(), String.t()) :: {:ok, map} | {:error, any()}
  def fetch_match(routing_value, match_id) do
    request_path = "/match/v5/matches/#{match_id}"
    request_url = build_url(routing_value, request_path)

    get(request_url)
  end

  @doc """
  Fetches a list of matches for a given summoner puuid that matches all other 
  criteria passed in through `params`

  Example request:
  ```elixir
  fetch_matches("americas", "abc123", %{start: 0, count: 5})
  ```

  Example response:
  ```elixir
  {:ok,
     ["NA1_4095008822", "NA1_4095014149", "NA1_4094938474", "NA1_4094905932", "NA1_4094903353"]}
  """
  @spec fetch_matches(routing_value_type(), String.t(), map) ::
  {:ok, list(String.t())} | {:error, any()}
  def fetch_matches(routing_value, puuid, params) do
    request_path = "/match/v5/matches/by-puuid/#{puuid}/ids"
    request_url = build_url(routing_value, request_path, params)

    get(request_url)
  end

  defp get(url) do
    case HTTPoison.get(url, request_headers()) do
      {:ok, response} ->
        handle_response(response)

      {:error, error} ->
        {:error, error}
    end
  end

  defp handle_response(%HTTPoison.Response{status_code: status_code, body: body}) do
    decoded_body = Poison.decode!(body)

    case status_code do
      200 ->
        {:ok, decoded_body}

      _any_other_status ->
        {:error, decoded_body}
    end
  end

  defp request_headers do
    [{"X-Riot-Token", api_token()}]
  end

  defp build_url(subdomain, path, params \\ nil) do
    URI.to_string(%URI{
      host: "#{subdomain}.api.riotgames.com/lol",
      path: path,
      port: 443,
      query: url_encode_params(params),
      scheme: "https"
    })
  end

  defp url_encode_params(nil), do: nil
  defp url_encode_params(params), do: URI.encode_query(params)

  defp api_token do
    Application.get_env(:blitz_lol, :riot_api_key)
  end
end
