defmodule Ark_Elixir.Transaction do
    def get_transaction(id) do
        HTTPotion.get("https://api.arknode.net/api/transactions/get", query: %{id: id})
        |> Map.get(:body)
    end

    def get_transactions do
        # blockId, limit, type, orderBy, offset, senderPublicKey, vendorField, ownerPublicKey, ownerADdress, senderId, recipientId, amount, fee
        HTTPotion.get("https://api.arknode.net/api/transactions")
        |> Map.get(:body)
    end

    def get_unconfirmed_transaction(id) do
        HTTPotion.get("https://api.arknode.net/api/transactions/unconfirmed/get", query: %{id: id})
        |> Map.get(:body)
    end

    def get_unconfirmed_transactions do
        # senderPublicKey, address
        HTTPotion.get("https://api.arknode.net/api/transactions/unconfirmed")
        |> Map.get(:body)
    end
end
