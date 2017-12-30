defmodule Ark_Elixir.Transaction do
    @moduledoc """
    Operations for Transactions.
    """

    @doc """
    Get a single transaction.

    ## Examples

        iex> Ark_Elixir.Transaction.get_transaction("a38dc6b9e6679be706d5b39eef7dd0a7a10011e63da7623082106d90834e23e1")
        %{"success" => true,
        "transaction" => %{"amount" => 1, "asset" => %{},
        "blockid" => "6119254423291710282", "confirmations" => 32932,
        "fee" => 10000000, "height" => 2411892,
        "id" => "a38dc6b9e6679be706d5b39eef7dd0a7a10011e63da7623082106d90834e23e1",
        "recipientId" => "AFuNopRKj2VwhaTWQraZgPTT5nofXskBTN",
        "senderId" => "Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t",
        "senderPublicKey" => "02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de",
        "signature" => "3044022030ded9cd7a1cf37f6ae85b35fd478502c916d493ecb1c6df8b1a8392323559d3022040a45aac97a6d915bc19f9ad3927395e3240dacb1b81ad00d871182e4fa130b7",
        "timestamp" => 19468149, "type" => 0, "vendorField" => "turnip"}}

        iex> Ark_Elixir.Transaction.get_transaction("a38dc6b9e6679be706d5b39eef7dd0a7a10011e63da7623082106d90834e23e1", :dev)
    """
    @spec get_transaction(String.t, Api.options) :: Api.response
    def get_transaction(id, opts \\ []) do
        Ark_Elixir.Api.get("api/transactions/get", [id: id, network: opts])
    end


    @doc """
    Get all transactions.

    Available parameters : blockId, limit, type, orderBy, offset, senderPublicKey,
    vendorField, ownerPublicKey, ownerADdress, senderId, recipientId, amount, fee

    ## Examples

        iex> Ark_Elixir.Transaction.get_transactions
        %{"count" => "317026", "success" => true,
        "transactions" => [%{"amount" => 116194849, "asset" => %{},
         "blockid" => "8207061786310158650", "confirmations" => 1160995,
         "fee" => 10000000,
         "id" => "5100ca49cbbf0664afdf03e460c260a9d5c73fdd05b404530f07121167c45e7e",
         "recipientId" => "AHKHHjbFJGb8qLxvzaST2yWaxUHfmvvXxq",
         "senderId" => "AGdWQF1uavGAM7NHmzR1syJDwsRpsdEwH9",
         "senderPublicKey" => "02022ed152b00ba1cfc5e486736180e6873002b7c310a2766dbb267064d87d13a5",
         "signSignature" => "3045022100e05c9f1cc1d7d7d2d1e40c448e9db5845dc948bdd8680ac3dd20f909ffb43db702203a07de235d47f70a5f59fa6f556485fdcd9a7b319a38c1323a12790920c968cc",
         "signature" => "304502210097ecee8578f4de4000b7ce9f14aa4d03c96c720525cc3ee159ec9407c55bc1fa0220086cca7dbab230d2e783dfbd46dc7f348df6f6ebde92eef0137a9e318dffc10e",
         "timestamp" => 10335623, "type" => 0},
         ...

         iex> iex> Ark_Elixir.Transaction.get_transactions([limit: 2])
         iex> iex> Ark_Elixir.Transaction.get_transactions([limit: 2, network: :dev])
         iex> iex> Ark_Elixir.Transaction.get_transactions([network: :dev, orderBy: "timestamp"])
         ...
    """
    @spec get_transactions(Api.options) :: Api.response
    def get_transactions(opts \\ []) do
        Ark_Elixir.Api.get("api/transactions", opts)
    end


    @doc """
    Get a single unconfirmed transaction.

    ## Examples

        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions("validId")
        ...
        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions("validId", :dev)
    """
    @spec get_unconfirmed_transaction(String.t, Api.options) :: Api.response
    def get_unconfirmed_transaction(id, opts \\ []) do
        Ark_Elixir.Api.get("api/transactions/unconfirmed/get", [id: id, network: opts])
    end


    @doc """
    Get all unconfirmed transactions.

    Available parameters : senderPublickKey, address

    ## Examples

        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions
        %{"success" => true, "transactions" => []}

        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions([address: "validArkAddress"])
        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions([address: "validArkAddress", network: :dev])
        ...
    """
    @spec get_unconfirmed_transactions(Api.options) :: Api.response
    def get_unconfirmed_transactions(opts \\ []) do
        Ark_Elixir.Api.get("api/transactions/unconfirmed", opts)
    end
end
