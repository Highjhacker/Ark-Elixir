defmodule Ark_Elixir.Transport do
    @moduledoc """
    Operations for Transports.
    """

    @doc """
    Get a list of peers.
    """
    def get_peers do
        HTTPotion.get("https://api.arknode.net/peer/list", query: %{nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"})
        |> Map.get(:body)
    end

    @doc """
    Get a list of blocks by ids.
    """
    def get_common_blocks(ids) do
        HTTPotion.get("https://api.arknode.net/peer/blocks/common", query: %{ids: ids})
        |> Map.get(:body)
    end

    @doc """
    Get all blocks.
    """
    def get_blocks(address) do
        HTTPotion.get("https://api.arknode.net/peer/blocks", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Get a single block.
    """
    def get_block(address) do
        HTTPotion.get("https://api.arknode.net/peer/block", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    """
    def get_transactions do
        HTTPotion.get("https://api.arknode.net/peer/transactions")
        |> Map.get(:body)
    end

    @doc """
    Create a new transaction.
    """
    def post_transaction do
        IO.puts "Not implemented !"
    end

    @doc """
    Get a list of transactions by ids.
    """
    def get_transactions_from_ids(ids) do
        HTTPotion.get("https://api.arknode.net/peer/transactionsFromIds", query: %{ids: ids})
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain height.
    """
    def get_height do
        HTTPotion.get("https://api.arknode.net/peer/height")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain status.
    """
    def get_status do
        HTTPotion.get("https://api.arknode.net/peer/status")
        |> Map.get(:body)
    end
end
