defmodule Ark_ElixirTest do
  use ExUnit.Case
  doctest Ark_Elixir

  test "greets the world" do
    assert Ark_Elixir.hello() == :world
  end
end
