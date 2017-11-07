defmodule Ark_ElixirTest do
    use ExUnit.Case, async: true
    import Ark_Elixir
    #import Mock

    # ACCOUNT
    test "account get balance" do
        req = Ark_Elixir.Account.get_balance("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "account get public key" do
        req = Ark_Elixir.Account.get_public_key("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "account get delegate fee" do
        req = Ark_Elixir.Account.get_delegate_fee
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "account get delegates" do
        req = Ark_Elixir.Account.get_delegates("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "account get accounts" do
        req = Ark_Elixir.Account.get_accounts("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "account get top accounts" do
        req = Ark_Elixir.Account.get_top_accounts
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / ACCOUNTS


    # BLOCK
    test "block get block" do
        req = Ark_Elixir.Block.get_block("570934191207974498")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get blocks" do
        req = Ark_Elixir.Block.get_blocks
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get epoch" do
        req = Ark_Elixir.Block.get_epoch
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get height" do
        req = Ark_Elixir.Block.get_height
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get nethash" do
        req = Ark_Elixir.Block.get_nethash
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get fee" do
        req = Ark_Elixir.Block.get_fee
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get fees" do
        req = Ark_Elixir.Block.get_fees
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get milestone" do
        req = Ark_Elixir.Block.get_milestone
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get reward" do
        req = Ark_Elixir.Block.get_reward
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get supply" do
        req = Ark_Elixir.Block.get_supply
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get status" do
        req = Ark_Elixir.Block.get_status
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / BLOCKS


    # LOADER
    test "loader get status" do
      req = Ark_Elixir.Loader.get_status()
      success =  Enum.find(req, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end

    test "loader get sync" do
      req = Ark_Elixir.Loader.get_sync()
      success =  Enum.find(req, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end

    test "loader get autoconfigure" do
      req = Ark_Elixir.Loader.autoconfigure()
      success =  Enum.find(req, fn {key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end
    # / LOADER
end
