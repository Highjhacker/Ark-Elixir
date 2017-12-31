defmodule Ark_Elixir.Signature do
    @moduledoc """
    Operations for Signatures.
    """

    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee
        %{"fee" => 500000000, "success" => true}
        iex> Ark_Elixir.Signature.get_signature_fee([network: :dev])
        iex> Ark_Elixir.Signature.get_signature_fee([address: "Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t", network: :dev])
    """
    @spec get_signature_fee() :: Api.response
    def get_signature_fee(opts \\ []) do
        Ark_Elixir.Api.get("api/signatures/fee", opts)
    end


    @doc """
    Get the fee for a signature.

    ## Examples

        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        %{"fee" => 500000000, "success" => true}
        iex> Ark_Elixir.Signature.get_signature_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t", [network: :dev])
    """
    #@spec get_signature_fee(Account.address, Api.options) :: Api.response
    #def get_signature_fee(address, opts \\ []) do
    #    Ark_Elixir.Api.get("api/signatures/fee", [{:address, address} | opts])
    #end
end
