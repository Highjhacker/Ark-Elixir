defmodule Ark_Elixir.MultiSignature do
    @moduledoc """
    Operations for MultiSignatures.
    """

    @doc """
    Get pending multi signature transactions.

    ## Examples

        iex> Ark_Elixir.MultiSignature.get_pending("validArkPublicKey")
        ...
    """
    def get_pending(publicKey) do
        request = HTTPotion.get("https://api.arknode.net/api/multisignatures/pending", query: %{publicKey: publicKey})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a list of accounts.

    ## Examples

        iex> Ark_Elixir.MultiSignature.get_accounts("validArkPublicKey")
        ...
    """
    def get_accounts(publicKey) do
        request = HTTPotion.get("https://api.arknode.net/api/multisignatures/accounts", query: %{publicKey: publicKey})
        Poison.Parser.parse!(request.body)
    end
end
