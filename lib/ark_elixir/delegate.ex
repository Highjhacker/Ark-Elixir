defmodule Ark_Elixir.Delegate do
    def get_delegates_count(address) do
        HTTPotion.get("https://api.arknode.net/api/delegates/count", query: %{address: address})
        |> Map.get(:body)
    end

    def search_delegates(query) do
        # limit
        HTTPotion.get("https://api.arknode.net/api/delegates/search", query: %{q: query})
        |> Map.get(:body)
    end

    def get_voters(publicKey) do
        HTTPotion.get("https://api.arknode.net/api/delegates/voters", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end

    def get_delegate(username) do
        #publicKey, username
        HTTPotion.get("https://api.arknode.net/api/delegates/get", query: %{username: username})
        |> Map.get(:body)
    end

    def get_delegate(publicKey) do
        #publicKey, username
        HTTPotion.get("https://api.arknode.net/api/delegates/get", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end

    def get_delegates do
        # orderBy, limit, offset
        HTTPotion.get("https://api.arknode.net/api/delegates")
        |> Map.get(:body)
    end

    def get_delegate_fee(address) do
        HTTPotion.get("https://api.arknode.net/api/delegates/fee", query: %{address: address})
        |> Map.get(:body)
    end

    def get_forged_by_account(generatorPublicKey) do
        HTTPotion.get("https://api.arknode.net/api/delegates/forging/getForgedByAccount", query: %{generatorPublicKey: generatorPublicKey})
        |> Map.get(:body)
    end

    def get_next_forgers(address) do
        HTTPotion.get("https://api.arknode.net/api/delegates/getNextForgers", query: %{address: address})
        |> Map.get(:body)
    end
end
