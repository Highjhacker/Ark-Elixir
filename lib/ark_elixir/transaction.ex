defmodule Ark_Elixir.Transaction do
    @moduledoc """
    Operations for Transactions.
    """

    @doc """
    Get a single transaction.

    ## Examples

        iex> Ark_Elixir.Transaction.get_transaction("validTransactionId")
        ...
    """
    def get_transaction(id) do
        request = HTTPotion.get("https://api.arknode.net/api/transactions/get", query: %{id: id})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get all transactions.

    ## Examples

        iex> Ark_Elixir.Transaction.get_transactions
        ...
    """
    def get_transactions do
        # blockId, limit, type, orderBy, offset, senderPublicKey, vendorField, ownerPublicKey, ownerADdress, senderId, recipientId, amount, fee
        request = HTTPotion.get("https://api.arknode.net/api/transactions")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a single unconfirmed transaction.

    ## Examples

        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions("validId")
        ...
    """
    def get_unconfirmed_transaction(id) do
        request = HTTPotion.get("https://api.arknode.net/api/transactions/unconfirmed/get", query: %{id: id})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get all unconfirmed transactions.

    ## Examples

        iex> Ark_Elixir.Transaction.get_unconfirmed_transactions
        ...
    """
    def get_unconfirmed_transactions do
        # senderPublicKey, address
        request = HTTPotion.get("https://api.arknode.net/api/transactions/unconfirmed")
        Poison.Parser.parse!(request.body)
    end
end
