defmodule Ark_Elixir.Peer do
    @moduledoc """
    Operations for Peers.
    """

    @doc """
    Get a single peer.
    """
    def get_peer(ip, port) do
        HTTPotion.get("https://api.arknode.net/api/peers/get", query: %{ip: ip, port: port})
        |> Map.get(:body)
    end

    @doc """
    Get all peers.
    """
    def get_peers do
        # port, state, os, version, orderBy, limit, offset
        HTTPotion.get("https://api.arknode.net/api/peers")
        |> Map.get(:body)
    end

    @doc """
    Get the peer version.
    """
    def get_peer_version do
        HTTPotion.get("https://api.arknode.net/api/peers/version")
        |> Map.get(:body)
    end
end
