defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

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

  describe "start_game/1" do
    test "when the game is started, returns a message" do
      player = Player.build("Soldier P", :chute, :soco, :cura)

      messages =
        capture_io(fn ->
        assert ExMon.start_game(player) == :ok
      end)

      assert messages =~ "The game is started!"
      assert messages =~ "status: :started"
      assert messages =~ "turn: :player"
    end
  end
end
