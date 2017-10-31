defmodule Ark_Elixir.Signature do
    @moduledoc """
    Operations for Signatures.
    """

    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee
        ...
    """
    def get_signature_fee do
        request = HTTPotion.get("https://api.arknode.net/api/signatures/fee")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee("validArkAddress")
        ...
    """
    def get_signature_fee(address) do
        request = HTTPotion.get("https://api.arknode.net/api/signatures/fee", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end
end
