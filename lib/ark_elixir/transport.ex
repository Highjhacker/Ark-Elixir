defmodule Ark_Elixir.Transport do
    @moduledoc """
    Operations for Transports.
    """

    @doc """
    Get a list of peers.

    ## Examples

        iex> Ark_Elixir.Transport.get_peers
        %{"peers" => [%{"delay" => 186, "errors" => 0, "height" => 2444835,
        "ip" => "164.132.98.197", "os" => "linux4.4.0-96-generic", "port" => 4001,
        status" => "OK", "version" => "1.0.1"},
        ...
        "success" => true}

        iex> Ark_Elixir.Transport.get_peers([network: :dev])
    """
    def get_peers(opts \\ []) do
        Ark_Elixir.Api.get("peer/list", opts)
    end


    @doc """
    Get a list of blocks by ids.

    ## Examples

        iex> Ark_Elixir.Transport.get_common_blocks("5807533976636630922, 7191952529633383827")
        %{"common" => %{"height" => 2444835, "id" => "5807533976636630922",
        "previousBlock" => "5933198505652557034", "timestamp" => 19737896},
        "lastBlockHeight" => 2444867, "success" => true}

        iex> Ark_Elixir.Transport.get_common_blocks("5807533976636630922, 7191952529633383827", [network: :dev])
    """
    def get_common_blocks(ids, opts \\ []) do
        Ark_Elixir.Api.get("peer/blocks/common", [{:ids, ids} | opts])
    end


    @doc """
    Get all blocks.

    ## Examples

        iex> Ark_Elixir.Transport.get_blocks("AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ")
        %{"blocks" => [], "success" => true}

        iex> Ark_Elixir.Transport.get_blocks("AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ", [network: :dev])
    """
    def get_blocks(address, opts \\ []) do
        Ark_Elixir.Api.get("peer/blocks", [{:address, address} | opts])
    end


    @doc """
    Get a single block.

    Note: Doesn't work, even the curl from the official API documentation doesn't work.

    ## Examples

        iex> Ark_Elixir.Transport.get_block("AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ")
        ...
        iex> Ark_Elixir.Transport.get_block("AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ",  [network: :dev])
    """
    def get_block(address, opts \\ []) do
        Ark_Elixir.Api.get("peer/block", [{:address, address} | opts])
    end


    @doc """
    Get a list of transactions.

    ## Examples

        iex> Ark_Elixir.Transport.get_transactions
        %{"success" => true, "transactions" => []}

        iex> Ark_Elixir.Transport.get_transactions([network: :dev])
    """
    def get_transactions(opts \\ []) do
        Ark_Elixir.Api.get("peer/transactions", opts)
    end


    @doc """
    Create a new transaction.

    ## Examples

        iex> Ark_Elixir.Transport.post_transaction
        ...
    """
    def post_transaction do
        IO.puts "Not implemented !"
    end


    @doc """
    Get a list of transactions by ids.

    ## Examples

        iex> Ark_Elixir.Transport.get_transactions_from_ids("e9f1ff96ccaf9ebcadb0e1c0827c606a71a88c258c6a3ec1a880be000996dd25")
        %{"success" => true,
        "transactions" => [%{"amount" => 84925724578, "asset" => %{},
        "blockId" => "7191952529633383827", "broadcast" => false,
        "fee" => 10000000, "hop" => 4,
        "id" => "d49951196d6ee48dbf9ba85d2268247e85a42f9bdddffd5298eafda6d109e1df",
        "recipientId" => "ALn6AwYZR9B8LnM9sZhUntZ3trgahRWShh",
        "senderId" => "AJbmGnDAx9y91MQCDApyaqZhn6fBvYX9iJ",
        "senderPublicKey" => "039aab9d87c271ea45aa16bfe2487e8534b8dc1ac742e124e9bf8afa0b8c648e02",
        "signature" => "3045022100fc5b78bcf9d43ef96a7ab5c43b9dc77b7d32e79b61ef3febe124ca89a190fb3b02201b609060a07d4da3a80f248f2ad130ff4a4d590d7670af5d333b533cbba5d302",
        "timestamp" => 19737857, "type" => 0}]}

        iex> Ark_Elixir.Transport.get_transactions_from_ids("e9f1ff96ccaf9ebcadb0e1c0827c606a71a88c258c6a3ec1a880be000996dd25", [network: :dev])
    """
    def get_transactions_from_ids(ids, opts \\ []) do
        Ark_Elixir.Api.get("peer/transactionsFromIds", [{:ids, ids} | opts])
    end


    @doc """
    Get the blockchain height.

    ## Examples

        iex> Ark_Elixir.Transport.get_height
        %{"header" => %{"blockSignature" => "3045022100a37201628eb224fbbcbe12cc19873e2b60bb9a9e4c47b62f9f2e78070b611b4602204c77f4b0636c960c9aa49dbb8704f73ae2ccb7b463ece02aa53b883f31744dab",
        "generatorPublicKey" => "034920a86224835ed039cbfdd6dbaf74061a750377126747c7ce68fd5ef8c8b9d4",
        "height" => 2444912, "id" => "13538325206067321507",
        "numberOfTransactions" => 0,
        "payloadHash" => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
        "payloadLength" => 0, "previousBlock" => "3874492067627887922",
        "reward" => 200000000, "timestamp" => 19738536, "totalAmount" => 0,
        "totalFee" => 0, "version" => 0}, "height" => 2444912, "success" => true}

        iex> Ark_Elixir.Transport.get_height([network: :dev])
    """
    def get_height(opts \\ []) do
        Ark_Elixir.Api.get("peer/height", opts)
    end


    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Transport.get_status
        %{"currentSlot" => 2467320, "forgingAllowed" => false,
        "header" => %{"blockSignature" => "3045022100c53eceabec598c969a53405b7e902da0aa49b5d16ef17f8aa089f4e99af10ea102201c2c0e2bddbee47034cd2c7cd70dc37bac11386a84bccd3ec19172c3f3e7f4f5",
        "generatorPublicKey" => "031c110968941f29c76f3752d5752d5541cfe65f23f5d7f9115d2f4eb194f41c47",
        "height" => 2444915, "id" => "13418003697900789286",
        "numberOfTransactions" => 0,
        "payloadHash" => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
        "payloadLength" => 0, "previousBlock" => "16552919518108735463",
        "reward" => 200000000, "timestamp" => 19738560, "totalAmount" => 0,
        "totalFee" => 0, "version" => 0}, "height" => 2444915, "success" => true}

        iex> Ark_Elixir.Transport.get_status([network: :dev])
    """
    def get_status(opts \\ []) do
        Ark_Elixir.Api.get("peer/status", opts)
    end
end
