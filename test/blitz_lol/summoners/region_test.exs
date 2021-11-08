defmodule BlitzLol.Summoners.RegionTest do
  @moduledoc """
    Tests for Region module
  """

  alias BlitzLol.Summoners.Region

  use ExUnit.Case
  use Mockery

  describe "validate_region/1" do
    test "returns an :ok tuple when a valid region is supplied" do
      assert {:ok, _} = Region.validate_region("br1")
    end

    test "returns an :error tuple when an invalid region is supplied" do
      assert {:error, error} = Region.validate_region("invalid")

      assert error ==
               "Invalid region, must be one of br1, eun1, euw1, jp1, kr, la1, la2, na1, oc1, ru, tr1"
    end
  end

  describe "get_routing_key_for_region/1" do
    test "returns the correct routing_key for the provided region" do
      routing_key = Region.get_routing_key_for_region("br1")

      assert routing_key == "americas"
    end
  end
end
