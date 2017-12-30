defmodule Ark_Elixir.Peer do
    @moduledoc """
    Operations for Peers.
    """

    @doc """
    Get a single peer.

    ## Examples

        iex> Ark_Elixir.Peer.get_peer("45.76.30.14", 4001)
        %{"peer" => %{"delay" => 162, "errors" => 0, "height" => 2444791,
        "ip" => "45.76.30.14", "os" => "linux4.4.0-96-generic", "port" => 4001,
        "status" => "OK", "version" => "1.0.1"}, "success" => true}

        iex> Ark_Elixir.Peer.get_peer("45.76.30.14", 4001, :dev)
    """
    @spec get_peer(String.t, String.t, Api.options) :: Api.response
    def get_peer(ip, port, opts \\ []) do
        Ark_Elixir.Api.get("api/peers/get", [ip: ip, port: port, network: opts])
    end


    @doc """
    Get all peers.

    The optional parameters doesn't works ATM, even on the Swagger API.

    Optional parameters : port, state, os, version, orderBy, limit, offset

    ## Examples

        iex> Ark_Elixir.Peer.get_peers
        %{"peers" => [%{"delay" => 76, "errors" => 0, "height" => 2444734,
        "ip" => "45.76.30.14", "os" => "linux4.4.0-96-generic", "port" => 4001,
        "status" => "OK", "version" => "1.0.1"},
        %{"delay" => 9, "errors" => 0, "height" => 2444784, "ip" => "149.56.126.216",
        "os" => "linux4.4.0-97-generic", "port" => 4001, "status" => "OK",
        "version" => "1.0.1"},
        "success" => true}

        iex> Ark_Elixir.Peer.get_peers(:dev)
    """
    @spec get_peers(Api.options) :: Api.response
    def get_peers(opts \\ []) do
        Ark_Elixir.Api.get("api/peers", [network: opts])
    end


    @doc """
    Get the peer version.

    ## Examples

        iex> Ark_Elixir.Peer.get_peer_version
        %{"build" => "", "success" => true, "version" => "1.0.1"}

        iex> Ark_Elixir.Peer.get_peer_version(:dev)
    """
    @spec get_peer_version(Api.options) :: Api.response
    def get_peer_version(opts \\ []) do
        Ark_Elixir.Api.get("api/peers/version", [network: opts])
    end
end
