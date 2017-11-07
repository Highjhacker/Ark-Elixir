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


    # DELEGATE
    test "delegate get delegates count" do
        req = Ark_Elixir.Delegate.get_delegates_count("ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get search delegate" do
        req = Ark_Elixir.Delegate.search_delegates("dr")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get voters" do
        req = Ark_Elixir.Delegate.get_voters("031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get delegate by username" do
        req = Ark_Elixir.Delegate.get_delegate("jarunik")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    #test "delegate get delegate by publickey" do
    #    req = Ark_Elixir.Delegate.get_delegate("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
    #    success =  Enum.find(req, fn {key, _} -> key == "success" end)
    #    assert elem(success, 1) == true
    #end

    test "delegate get delegates" do
        req = Ark_Elixir.Delegate.get_delegates
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get delegate fee" do
        req = Ark_Elixir.Delegate.get_delegate_fee("ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get forged by account" do
        req = Ark_Elixir.Delegate.get_forged_by_account("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get next forgers" do
        req = Ark_Elixir.Delegate.get_next_forgers("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / DELEGATE


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


    # MULTISIGNATURE
    test "multisignature get pending" do
        req = Ark_Elixir.MultiSignature.get_pending("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "multisignature get accounts" do
        req = Ark_Elixir.MultiSignature.get_pending("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / MULTISIGNATURE


    # PEER
    test "peer get peer" do
        req = Ark_Elixir.Peer.get_peer("45.76.30.14", 4001)
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "peer get peers" do
        req = Ark_Elixir.Peer.get_peers
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "peer get peer version" do
        req = Ark_Elixir.Peer.get_peer_version
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / PEER


    # SIGNATURE
    test "signature get signature fee" do
        req = Ark_Elixir.Signature.get_signature_fee
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "signature get signature fee from address" do
        req = Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / SIGNATURE


    # TRANSACTION
    test "transaction get transaction from id" do
        req = Ark_Elixir.Transaction.get_transaction("a38dc6b9e6679be706d5b39eef7dd0a7a10011e63da7623082106d90834e23e1")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "transaction get transactions" do
        req = Ark_Elixir.Transaction.get_transactions
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "transaction get unconfirmed transaction from id" do
        req = Ark_Elixir.Transaction.get_unconfirmed_transaction("a38dc6b9e6679be706d5b39eef7dd0a7a10011e63da7623082106d90834e23e1")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "transaction get unconfirmed transactions" do
        req = Ark_Elixir.Transaction.get_unconfirmed_transactions
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / TRANSACTION
end
