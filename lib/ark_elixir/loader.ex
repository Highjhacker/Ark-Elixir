defmodule Ark_Elixir.Loader do
    @moduledoc """
    Operations for Loaders.
    """

    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Loader.get_status
        ...
    """
    def get_status do
        request = HTTPotion.get("https://api.arknode.net/api/loader/status")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the synchronisation status of the client.

    ## Examples

        iex> Ark_Elixir.Loader.get_sync
        ...
    """
    def get_sync do
        request = HTTPotion.get("https://api.arknode.net/api/loader/status/sync")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Auto-configure the client loader.

    ## Examples

        iex> Ark_Elixir.Loader.autoconfigure
        ...
    """
    def autoconfigure do
        request = HTTPotion.get("https://api.arknode.net/api/loader/autoconfigure")
        Poison.Parser.parse!(request.body)
    end
end
