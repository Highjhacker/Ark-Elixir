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
        Ark_Elixir.Api.get("api/signatures/fee")
    end


    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        %{"fee" => 500000000, "success" => true}
        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t", [network: :dev])
    """
    def get_signature_fee(address, opts \\ []) do
        Ark_Elixir.Api.get("api/signatures/fee", [{:address, address} | opts])
    end
end
