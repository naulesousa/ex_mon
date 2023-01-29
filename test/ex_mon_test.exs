defmodule ExMonTest do
  use ExUnit.Case

  alias ExMon.Player

  describe "create_player/4" do
    test "returns a player" do
      expected_response = %Player{
        life: 100,
        moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
        name: "Soldier P"
      }
      assert expected_response == ExMon.create_player("Soldier P", :chute, :soco, :cura)
    end
  end
end
