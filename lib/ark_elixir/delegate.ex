defmodule Ark_Elixir.Delegate do
    @moduledoc """
    Operations for Delegates.
    """

    @doc """
    Get the count of delegates.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegates_count("validArkAddress")
        ...
    """
    def get_delegates_count(address) do
        HTTPotion.get("https://api.arknode.net/api/delegates/count", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Search for specific delegates.

    ## Examples

        iex> Ark_Elixir.Delegate.search_delegates("dr10")
        ...
    """
    def search_delegates(query) do
        # limit
        HTTPotion.get("https://api.arknode.net/api/delegates/search", query: %{q: query})
        |> Map.get(:body)
    end

    @doc """
    Get a list of voters for a delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_voters("arkValidPublicKey")
        ...
    """
    def get_voters(publicKey) do
        HTTPotion.get("https://api.arknode.net/api/delegates/voters", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end

    @doc """
    Get a single delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate("delegateUsername")
        ...
    """
    def get_delegate(username) do
        #publicKey, username
        HTTPotion.get("https://api.arknode.net/api/delegates/get", query: %{username: username})
        |> Map.get(:body)
    end

    @doc """
    Get a single delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate("arkValidPublicKey")
        ...
    """
    def get_delegate(publicKey) do
        #publicKey, username
        HTTPotion.get("https://api.arknode.net/api/delegates/get", query: %{publicKey: publicKey})
        |> Map.get(:body)
    end

    @doc """
    Get all delegates.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegates
        ...
    """
    def get_delegates do
        # orderBy, limit, offset
        HTTPotion.get("https://api.arknode.net/api/delegates")
        |> Map.get(:body)
    end

    @doc """
    Get the delegate fee.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate_fee("validArkAddress")
        ...
    """
    def get_delegate_fee(address) do
        HTTPotion.get("https://api.arknode.net/api/delegates/fee", query: %{address: address})
        |> Map.get(:body)
    end

    @doc """
    Get the amount of ARKs forged by an account.

    ## Examples

        iex> Ark_Elixir.Delegate.get_forged_by_account("validGeneratorPublicKey")
        ...
    """
    def get_forged_by_account(generatorPublicKey) do
        HTTPotion.get("https://api.arknode.net/api/delegates/forging/getForgedByAccount", query: %{generatorPublicKey: generatorPublicKey})
        |> Map.get(:body)
    end

    @doc """
    Get the next forger.

    ## Examples

        iex> Ark_Elixir.Delegate.get_next_forgers("validArkAddress")
        ...
    """
    def get_next_forgers(address) do
        HTTPotion.get("https://api.arknode.net/api/delegates/getNextForgers", query: %{address: address})
        |> Map.get(:body)
    end
end
