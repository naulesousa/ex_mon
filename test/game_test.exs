defmodule ExMon.GameTest do
  use ExUnit.case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = Player.build("Naule Sousa", :chute, :soco, :cura)
      computer = Player.build("Robotinik", :chute, :soco, :cura)
    end
  end
end
