defmodule BlitzLol.Summoners.Region do
  @moduledoc """
  Helper functions for regions and routing keys
  """

  @region_routing_mappings %{
    "br1" => "americas",
    "eun1" => "europe",
    "euw1" => "europe",
    "jp1" => "asia",
    "kr" => "asia",
    "la1" => "americas",
    "la2" => "americas",
    "na1" => "americas",
    "oc1" => "americas",
    "ru" => "europe",
    "tr1" => "europe"
  }

  @doc """
  Validates the provided region. Returns on :ok tuple if valid, and an :error
  tuple if invalid
  """
  @spec validate_region(String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def validate_region(region) do
    case Map.has_key?(@region_routing_mappings, region) do
      true ->
        {:ok, "valid"}

      false ->
        {:error,
         "Invalid region, must be one of #{Enum.join(Map.keys(@region_routing_mappings), ", ")}"}
    end
  end

  @doc """
  Returns the correct routing_key for the provided region
  """
  @spec get_routing_key_for_region(String.t()) :: String.t() | nil
  def get_routing_key_for_region(region) do
    Map.get(@region_routing_mappings, region)
  end
end
