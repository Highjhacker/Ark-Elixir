defmodule Ark_Elixir.Peer do
    @moduledoc """
    Operations for Peers.
    """

    @doc """
    Get a single peer.

    ## Examples

        iex> Ark_Elixir.Peer.get_peer("ipAddress", "port")
        ...
    """
    def get_peer(ip, port) do
        request = HTTPotion.get("https://api.arknode.net/api/peers/get", query: %{ip: ip, port: port})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get all peers.

    ## Examples

        iex> Ark_Elixir.Peer.get_peers
        ...
    """
    def get_peers do
        # port, state, os, version, orderBy, limit, offset
        request = HTTPotion.get("https://api.arknode.net/api/peers")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the peer version.

    ## Examples

        iex> Ark_Elixir.Peer.get_peer_version
        ...
    """
    def get_peer_version do
        request = HTTPotion.get("https://api.arknode.net/api/peers/version")
        Poison.Parser.parse!(request.body)
    end
end
