defmodule Ark_Elixir.Signature do
    @moduledoc """
    Operations for Signatures.
    """

    @doc """
    Get the fee for a signature.
    """
    def get_signature_fee do
        HTTPotion.get("https://api.arknode.net/api/signatures/fee")
        |> Map.get(:body)
    end

    @doc """
    Get the fee for a signature.
    """
    def get_signature_fee(address) do
        HTTPotion.get("https://api.arknode.net/api/signatures/fee", query: %{address: address})
        |> Map.get(:body)
    end
end
