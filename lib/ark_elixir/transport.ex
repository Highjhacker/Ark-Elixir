defmodule Ark_Elixir.Transport do
    @moduledoc """
    Operations for Transports.
    """

    @doc """
    Get a list of peers.

    ## Examples

        iex> Ark_Elixir.Transport.get_peers
        ...
    """
    def get_peers do
        request = HTTPotion.get("https://api.arknode.net/peer/list",
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a list of blocks by ids.

    ## Examples

        iex> Ark_Elixir.Transport.get_common_blocks("validListOfIds")
        ...
    """
    def get_common_blocks(ids) do
        request = HTTPotion.get("https://api.arknode.net/peer/blocks/common", query: %{ids: ids},
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get all blocks.

    ## Examples

        iex> Ark_Elixir.Transport.get_blocks("validArkAddress")
        ...
    """
    def get_blocks(address) do
        request = HTTPotion.get("https://api.arknode.net/peer/blocks", query: %{address: address},
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a single block.

    ## Examples

        iex> Ark_Elixir.Transport.get_block("validArkAddress")
        ...
    """
    def get_block(address) do
        request = HTTPotion.get("https://api.arknode.net/peer/block", query: %{address: address},
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a list of transactions.

    ## Examples

        iex> Ark_Elixir.Transport.get_transactions
        ...
    """
    def get_transactions do
        request = HTTPotion.get("https://api.arknode.net/peer/transactions",
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
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

        iex> Ark_Elixir.Transport.get_transactions_from_ids("validListOfIds")
        ...
    """
    def get_transactions_from_ids(ids) do
        request = HTTPotion.get("https://api.arknode.net/peer/transactionsFromIds", query: %{ids: ids},
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain height.

    ## Examples

        iex> Ark_Elixir.Transport.get_height
    """
    def get_height do
        request = HTTPotion.get("https://api.arknode.net/peer/height",
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Transport.get_status
        ...
    """
    def get_status do
        request = HTTPotion.get("https://api.arknode.net/peer/status",
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        Poison.Parser.parse!(request.body)
    end
end
