defmodule Ark_Elixir.Transport do
    def get_peers do
        HTTPotion.get("https://api.arknode.net/peer/list")
        |> Map.get(:body)
    end

    def get_common_blocks(ids) do
        HTTPotion.get("https://api.arknode.net/peer/blocks/common", query: %{ids: ids})
        |> Map.get(:body)
    end

    def get_blocks(address) do
        HTTPotion.get("https://api.arknode.net/peer/blocks", query: %{address: address})
        |> Map.get(:body)
    end

    def get_block(address) do
        HTTPotion.get("https://api.arknode.net/peer/block", query: %{address: address})
        |> Map.get(:body)
    end

    def get_transactions do
        HTTPotion.get("https://api.arknode.net/peer/transactions")
        |> Map.get(:body)
    end

    def post_transaction do
        IO.puts "Not implemented !"
    end

    def get_transactions_from_ids(ids) do
        HTTPotion.get("https://api.arknode.net/peer/transactionsFromIds", query: %{ids: ids})
        |> Map.get(:body)
    end

    def get_height do
        HTTPotion.get("https://api.arknode.net/peer/height")
        |> Map.get(:body)
    end

    def get_status do
        HTTPotion.get("https://api.arknode.net/peer/status")
        |> Map.get(:body)
    end
end
