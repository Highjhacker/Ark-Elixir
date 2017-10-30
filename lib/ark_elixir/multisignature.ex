defmodule Ark_Elixir.MultiSignature do
    def get_pending(publicKey) do
        HTTPotion.get("https://api.arknode.net/api/multisignatures/pending", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end

    def get_accounts(publicKey) do
        HTTPotion.get("https://api.arknode.net/api/multisignatures/accounts", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end
end
