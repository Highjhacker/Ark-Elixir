defmodule Ark_Elixir.Loader do
    @moduledoc """
    Operations for Loaders.
    """

    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Loader.get_status
        %{"blocksCount" => 0, "loaded" => false, "now" => 2286032, "success" => true}

        iex> Ark_Elixir.Loader.get_status(:dev)
    """
    def get_status(opts \\ []) do
        Ark_Elixir.Api.get("api/loader/status", [network: opts])
    end


    @doc """
    Get the synchronisation status of the client.

    ## Examples

        iex> Ark_Elixir.Loader.get_sync
        %{"blocks" => 1, "height" => 2444739, "id" => "17851699462285552610",
        "success" => true, "syncing" => false}

        iex> Ark_Elixir.Loader.get_sync(:dev)
    """
    def get_sync(opts \\ []) do
        Ark_Elixir.Api.get("api/loader/status/sync", [network: opts])
    end


    @doc """
    Auto-configure the client loader.

    ## Examples

        iex> Ark_Elixir.Loader.autoconfigure
        %{"network" => %{"explorer" => "https://explorer.ark.io",
        "nethash" => "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988",
        "symbol" => "Ѧ", "token" => "ARK", "version" => 23}, "success" => true}

        iex> Ark_Elixir.Loader.autoconfigure(:dev)
    """
    def autoconfigure(opts \\ []) do
        Ark_Elixir.Api.get("api/loader/autoconfigure", [network: opts])
    end
end
