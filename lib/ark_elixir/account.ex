defmodule Ark_Elixir.Account do
    @moduledoc """
    Operations for Accounts.
    """

    @doc """
    Get the balance of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_balance("validArkAddress")
        ...
    """
    def get_balance(address) do
        HTTPotion.get("https://api.arknode.net/api/accounts/getBalance", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Get the public key of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_public_key("validArkAddress")
        ...
    """
    def get_public_key(address) do
        HTTPotion.get("https://api.arknode.net/api/accounts/getPublicKey", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Get the delegate fee of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_delegate_fee
        ...
    """
    def get_delegate_fee do
        HTTPotion.get("https://api.arknode.net/api/accounts/delegates/fee")
        |> Map.get(:body)
    end

    @doc """
    Get the delegates of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_delegates("validArkAddress")
        ...
    """
    def get_delegates(address) do
        # orderBy, limit, offset
        HTTPotion.get("https://api.arknode.net/api/accounts/delegates", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Return account information of an address.

    ## Examples

        iex> Ark_Elixir.Account.get_accounts("validArkAddress")
        ...
    """
    def get_accounts(address) do
        HTTPotion.get("https://api.arknode.net/api/accounts", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Get a list of top accounts.

    ## Examples

        iex> Ark_Elixir.Account.get_top_accounts
        ...
    """
    def get_top_accounts do
        # limit, offset
        HTTPotion.get("https://api.arknode.net/api/accounts/top")
        |> Map.get(:body)
    end

end
