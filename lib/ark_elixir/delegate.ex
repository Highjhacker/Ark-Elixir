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
        request = HTTPotion.get("https://api.arknode.net/api/delegates/count", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Search for specific delegates.

    ## Examples

        iex> Ark_Elixir.Delegate.search_delegates("dr10")
        ...
    """
    def search_delegates(query) do
        # limit
        request = HTTPotion.get("https://api.arknode.net/api/delegates/search", query: %{q: query})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a list of voters for a delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_voters("arkValidPublicKey")
        ...
    """
    def get_voters(publicKey) do
        request = HTTPotion.get("https://api.arknode.net/api/delegates/voters", query: %{publicKey: publicKey})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a single delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate("delegateUsername")
        ...
    """
    def get_delegate(username) do
        #publicKey, username
        request = HTTPotion.get("https://api.arknode.net/api/delegates/get", query: %{username: username})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get a single delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate("arkValidPublicKey")
        ...
    """
    def get_delegate(publicKey) do
        #publicKey, username
        request = HTTPotion.get("https://api.arknode.net/api/delegates/get", query: %{publicKey: publicKey})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get all delegates.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegates
        ...
    """
    def get_delegates do
        # orderBy, limit, offset
        request = HTTPotion.get("https://api.arknode.net/api/delegates")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the delegate fee.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate_fee("validArkAddress")
        ...
    """
    def get_delegate_fee(address) do
        request = HTTPotion.get("https://api.arknode.net/api/delegates/fee", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the amount of ARKs forged by an account.

    ## Examples

        iex> Ark_Elixir.Delegate.get_forged_by_account("validGeneratorPublicKey")
        ...
    """
    def get_forged_by_account(generatorPublicKey) do
        request = HTTPotion.get("https://api.arknode.net/api/delegates/forging/getForgedByAccount", query: %{generatorPublicKey: generatorPublicKey})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the next forger.

    ## Examples

        iex> Ark_Elixir.Delegate.get_next_forgers("validArkAddress")
        ...
    """
    def get_next_forgers(address) do
        request = HTTPotion.get("https://api.arknode.net/api/delegates/getNextForgers", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end
end
