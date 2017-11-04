defmodule Ark_Elixir.Loader do
    @moduledoc """
    Operations for Loaders.
    """

    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Loader.get_status
        %{"blocksCount" => 0, "loaded" => false, "now" => 2286032, "success" => true}
    """
    def get_status do
        request = HTTPotion.get("https://api.arknode.net/api/loader/status")
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get the synchronisation status of the client.

    ## Examples

        iex> Ark_Elixir.Loader.get_sync
        %{"blocks" => 1, "height" => 2444739, "id" => "17851699462285552610",
        "success" => true, "syncing" => false}
    """
    def get_sync do
        request = HTTPotion.get("https://api.arknode.net/api/loader/status/sync")
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Auto-configure the client loader.

    ## Examples

        iex> Ark_Elixir.Loader.autoconfigure
        %{"network" => %{"explorer" => "https://explorer.ark.io",
        "nethash" => "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988",
        "symbol" => "Ѧ", "token" => "ARK", "version" => 23}, "success" => true}
    """
    def autoconfigure do
        request = HTTPotion.get("https://api.arknode.net/api/loader/autoconfigure")
        Poison.Parser.parse!(request.body)
    end
end
