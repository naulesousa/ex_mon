defmodule ExMon do
  @moduledoc """
  Documentation for `ExMon`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExMon.hello()
      :world

  """
  alias ExMon.{Game, Player}

  @computer_name "Robotinik"

  def create_player(name, move_avg, move_rnd, move_heal) do
    ExMon.Player.build(name, move_avg, move_rnd, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)
  end
end
