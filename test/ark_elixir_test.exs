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

    test "account get balance on dev network" do
        req = Ark_Elixir.Account.get_balance("DS2YQzkSCW1wbTjbfFGVPzmgUe1tNFQstN", [network: :dev])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "account get balance on kapu main network" do
        req = Ark_Elixir.Account.get_balance("KUQc9hNoG4o81t1gwkYTapPqJrxp8Zxf9Y", [network: :kapu])
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

    test "account get top accounts with a limit of 5" do
        req = Ark_Elixir.Account.get_top_accounts([limit: 5])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    # It seems that we can't have the top accounts atm
    # see : http://167.114.29.55:4002/api/accounts/top
    test "account get top accounts with a limit of 5 on the dev network" do
        req = Ark_Elixir.Account.get_top_accounts([limit: 5, network: :dev])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == false
    end
    # / ACCOUNTS


    # BLOCK
    test "block get block" do
        req = Ark_Elixir.Block.get_block("570934191207974498")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get block from dev network" do
      req = Ark_Elixir.Block.get_block("10013373100062296151", [network: :dev])
      success = Enum.find(req, fn{key, _} -> key == "success" end)
      assert elem(success, 1) == true
    end

    test "block get blocks" do
        req = Ark_Elixir.Block.get_blocks
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get blocks with a limit of 5" do
        req = Ark_Elixir.Block.get_blocks([limit: 5])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get blocks with a limit of 5 on the dev network" do
        req = Ark_Elixir.Block.get_blocks([network: :dev, limit: 5])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get epoch" do
        req = Ark_Elixir.Block.get_epoch
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "block get epoch on the dev network" do
        req = Ark_Elixir.Block.get_epoch([network: :dev])
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

    test "delegate get search delegate with a limit of 2" do
        req = Ark_Elixir.Delegate.search_delegates("dr", [limit: 2])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get search delegate with a limit of 2 on the dev network" do
        req = Ark_Elixir.Delegate.search_delegates("dr", [limit: 2, network: :dev])
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

    test "delegate get delegate by publickey" do
        req = Ark_Elixir.Delegate.get_delegate("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get delegates" do
        req = Ark_Elixir.Delegate.get_delegates
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "delegate get delegates on the dev network" do
        req = Ark_Elixir.Delegate.get_delegates([network: :dev])
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

    test "loader get status on the dev network" do
      req = Ark_Elixir.Loader.get_status([network: :dev])
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

    test "peer get peers on the dev network" do
        req = Ark_Elixir.Peer.get_peers([network: :dev])
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

    test "signature get signature fee on the dev network" do
        req = Ark_Elixir.Signature.get_signature_fee([network: :dev])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "signature get signature fee from address" do
        req = Ark_Elixir.Signature.get_signature_fee([address: "Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t"])
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

    test "transaction get transaction from id on the dev network" do
        req = Ark_Elixir.Transaction.get_transaction("83487f19ea0f3e3235f98dd07f5f2234ed30e42dedc5e8a3ccce9ec0d40710b3", [network: :dev])
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
        assert elem(success, 1) == false
    end

    test "transaction get unconfirmed transactions" do
        req = Ark_Elixir.Transaction.get_unconfirmed_transactions
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / TRANSACTION


    # TRANSPORT
    test "transport get peers" do
        req = Ark_Elixir.Transport.get_peers
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    # Should return "Request is made on the wrong network"
    test "transport get peers on the dev network" do
        req = Ark_Elixir.Transport.get_peers([network: :dev])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == false
    end

    # Need to work on the main function
    #test "transport get blocks by a list of ids" do
    #    req = Ark_Elixir.Transport.get_common_blocks("5807533976636630922")
    #    success =  Enum.find(req, fn {key, _} -> key == "success" end)
    #    assert elem(success, 1) == true
    #end

    test "transport get blocks" do
        req = Ark_Elixir.Transport.get_blocks("AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    # The function doesn't work cause (I think) the endpoint doesn't work
    #test "transport get block" do
    #    req = Ark_Elixir.Transport.get_block("AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ")
    #    success =  Enum.find(req, fn {key, _} -> key == "success" end)
    #    assert elem(success, 1) == true
    #end

    test "transport get transactions" do
        req = Ark_Elixir.Transport.get_transactions
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    #test "transport post transaction" do
    #    IO.puts "Not implemented"
    #end

    test "transport get transactions from ids" do
        req = Ark_Elixir.Transport.get_transactions_from_ids("e9f1ff96ccaf9ebcadb0e1c0827c606a71a88c258c6a3ec1a880be000996dd25")
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    test "transport get height" do
        req = Ark_Elixir.Transport.get_height
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end

    # Should return "Request is made on the wrong network"
    test "transport get height on the dev network" do
        req = Ark_Elixir.Transport.get_height([network: :dev])
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == false
    end

    test "transport get status" do
        req = Ark_Elixir.Transport.get_status
        success =  Enum.find(req, fn {key, _} -> key == "success" end)
        assert elem(success, 1) == true
    end
    # / TRANSPORT
end
