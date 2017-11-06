defmodule Ark_ElixirTest do
    use ExUnit.Case, async: true
    import Ark_Elixir
    #import Mock

    # ACCOUNT
    test "get account balance" do
        req = Ark_Elixir.Account.get_balance("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "get account public key" do
        req = Ark_Elixir.Account.get_public_key("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "get account delegate fee" do
        req = Ark_Elixir.Account.get_delegate_fee
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "get account delegates" do
        req = Ark_Elixir.Account.get_delegates("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "get account accounts" do
        req = Ark_Elixir.Account.get_accounts("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "get account top accounts" do
        req = Ark_Elixir.Account.get_top_accounts
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / ACCOUNTS


    # BLOCK
    
    # / BLOCKS


    # LOADER
    test "get loader status" do
      req = Ark_Elixir.Loader.get_status()
      success =  Enum.find(req, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end

    test "get loader sync" do
      req = Ark_Elixir.Loader.get_sync()
      success =  Enum.find(req, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end

    test "get loader autoconfigure" do
      req = Ark_Elixir.Loader.autoconfigure()
      success =  Enum.find(req, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end
    # / LOADER
end
