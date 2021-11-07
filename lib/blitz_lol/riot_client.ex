defmodule BlitzLol.RiotClient do
  @moduledoc """
  Client for making requests against the Riot API
  """

  def fetch_summoner(region, summoner_name) do
    request_path = "/summoner/v4/summoners/by-name/#{summoner_name}"
    request_url = build_url(region, request_path)

    get(request_url)
  end

  def fetch_match(region, match_id) do
    request_path = "/match/v5/matches/#{match_id}"
    request_url = build_url(region, request_path)

    get(request_url)
  end

  def fetch_matches(region, puuid, params) do
    request_path = "/match/v5/matches/by-puuid/#{puuid}/ids"
    request_url = build_url(region, request_path, params)

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
