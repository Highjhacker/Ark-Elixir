defmodule Ark_Elixir.Signature do
    @moduledoc """
    Operations for Signatures.
    """

    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee
        %{"fee" => 500000000, "success" => true}
    """
    def get_signature_fee do
        request = HTTPotion.get("https://api.arknode.net/api/signatures/fee")
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        %{"fee" => 500000000, "success" => true}
    """
    def get_signature_fee(address) do
        request = HTTPotion.get("https://api.arknode.net/api/signatures/fee", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end
end
