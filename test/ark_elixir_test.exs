defmodule Ark_ElixirTest do
    use ExUnit.Case, async: true
    import Ark_Elixir.Loader
    #import Mock

  test "get loader status" do
      response = get_status()
      success =  Enum.find(response, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
  end

  test "get loader sync" do
      response = get_sync()
      success =  Enum.find(response, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
  end

  test "get loader autoconfigure" do
      response = autoconfigure()
      success =  Enum.find(response, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
  end
end
