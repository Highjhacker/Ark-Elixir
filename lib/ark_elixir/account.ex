defmodule Ark_Elixir.Account do
    def get_balance(address) do
        HTTPotion.get("https://api.arknode.net/api/accounts/getBalance", query: %{address: address})
        |> Map.get(:body)
    end

    def get_public_key(address) do
        HTTPotion.get("https://api.arknode.net/api/accounts/getPublicKey", query: %{address: address})
        |> Map.get(:body)
    end

    def get_delegate_fee do
        HTTPotion.get("https://api.arknode.net/api/accounts/delegates/fee")
        |> Map.get(:body)
    end

    def get_delegates(address) do
        # orderBy, limit, offset
        HTTPotion.get("https://api.arknode.net/api/accounts/delegates", query: %{address: address})
        |> Map.get(:body)
    end

    def get_accounts(address) do
        HTTPotion.get("https://api.arknode.net/api/accounts", query: %{address: address})
        |> Map.get(:body)
    end

    def get_top_accounts do
        # limit, offset
        HTTPotion.get("https://api.arknode.net/api/accounts/top")
        |> Map.get(:body)
    end

end
