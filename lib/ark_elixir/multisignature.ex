defmodule Ark_Elixir.MultiSignature do
    @moduledoc """
    Operations for MultiSignatures.
    """

    @doc """
    Get pending multi signature transactions.

    ## Examples

        iex> Ark_Elixir.MultiSignature.get_pending("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        %{"success" => true, "transactions" => []}

        iex> Ark_Elixir.MultiSignature.get_pending("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de", [network: :dev])
    """
    @spec get_pending(Account.public_key, Api.options) :: Api.response
    def get_pending(publicKey, opts \\ []) do
        Ark_Elixir.Api.get("api/multisignatures/pending", [{:publicKey, publicKey} | opts])
    end


    @doc """
    Get a list of accounts.

    ## Examples

        iex> Ark_Elixir.MultiSignature.get_accounts("validArkPublicKey")
        ...
        iex> Ark_Elixir.MultiSignature.get_accounts("validArkPublicKey", [network: :dev])
    """
    @spec get_accounts(Account.public_key, Api.options) :: Api.response
    def get_accounts(publicKey, opts \\ []) do
        Ark_Elixir.Api.get("api/multisignatures/accounts", [{:publicKey, publicKey} | opts])
    end
end
