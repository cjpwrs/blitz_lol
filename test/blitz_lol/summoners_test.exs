defmodule BlitzLol.SummonersTest do
  @moduledoc """
    Tests for Summoners module
  """

  alias BlitzLol.Summoners

  use ExUnit.Case
  use Mockery

  describe "track_recent_summoners_by_summoner_name/2" do
    test "returns an :ok tuple with a list of summoners" do
      assert {:ok, summoners} = Summoners.track_recent_summoners_by_summoner_name("na1", "mills")

      assert summoners == [
               "SauceZzz",
               "Chef Pasquale",
               "NO69U",
               "ExpIosìon",
               "Raghadast",
               "Gugulaka",
               "PANDAMAN3659",
               "Deleted282",
               "ZubatUsedLowKick"
             ]
    end

    test "returns an :error tuple if an invalid region is provided" do
      assert {:error, error} =
               Summoners.track_recent_summoners_by_summoner_name("bad_region", "mills")

      assert error ==
               "Invalid region, must be one of br1, eun1, euw1, jp1, kr, la1, la2, na1, oc1, ru, tr1"
    end

    test "returns an :error tuple if nil summoner name is provided" do
      assert {:error, error} = Summoners.track_recent_summoners_by_summoner_name("na1", nil)

      assert error == "Summoner name cannot be nil"
    end

    test "returns an :error tuple if empty summoner name is provided" do
      assert {:error, error} = Summoners.track_recent_summoners_by_summoner_name("na1", "")

      assert error == "Summoner name cannot be empty"
    end
  end
end
