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
        HTTPotion.get("https://api.arknode.net/api/multisignatures/pending", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end

    @doc """
    Get a list of accounts.

    ## Examples

        iex> Ark_Elixir.MultiSignature.get_accounts("validArkPublicKey")
        ...
    """
    def get_accounts(publicKey) do
        HTTPotion.get("https://api.arknode.net/api/multisignatures/accounts", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end
end
