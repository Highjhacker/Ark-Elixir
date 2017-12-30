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
    @spec get_signature_fee() :: Api.response
    def get_signature_fee do
        Ark_Elixir.Api.get("api/signatures/fee")
    end


    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        %{"fee" => 500000000, "success" => true}
        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t", :dev)
    """
    @spec get_signature_fee(Account.address, Api.options) :: Api.response
    def get_signature_fee(address, opts \\ []) do
        Ark_Elixir.Api.get("api/signatures/fee", [address: address, network: opts])
    end
end
