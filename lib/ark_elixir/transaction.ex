defmodule Ark_Elixir.Transaction do
    @moduledoc """
    Operations for Transactions.
    """

    @doc """
    Get a single transaction.
    """
    def get_transaction(id) do
        HTTPotion.get("https://api.arknode.net/api/transactions/get", query: %{id: id})
        |> Map.get(:body)
    end

    @doc """
    Get all transactions.
    """
    def get_transactions do
        # blockId, limit, type, orderBy, offset, senderPublicKey, vendorField, ownerPublicKey, ownerADdress, senderId, recipientId, amount, fee
        HTTPotion.get("https://api.arknode.net/api/transactions")
        |> Map.get(:body)
    end

    @doc """
    Get a single unconfirmed transaction.
    """
    def get_unconfirmed_transaction(id) do
        HTTPotion.get("https://api.arknode.net/api/transactions/unconfirmed/get", query: %{id: id})
        |> Map.get(:body)
    end

    @doc """
    Get all unconfirmed transactions.
    """
    def get_unconfirmed_transactions do
        # senderPublicKey, address
        HTTPotion.get("https://api.arknode.net/api/transactions/unconfirmed")
        |> Map.get(:body)
    end
end
