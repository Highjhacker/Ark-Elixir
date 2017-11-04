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
    """
    def get_peer(ip, port) do
        request = HTTPotion.get("https://api.arknode.net/api/peers/get", query: %{ip: ip, port: port})
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get all peers.

    ## Examples

        iex> Ark_Elixir.Peer.get_peers
        %{"peers" => [%{"delay" => 76, "errors" => 0, "height" => 2444734,
        "ip" => "45.76.30.14", "os" => "linux4.4.0-96-generic", "port" => 4001,
        "status" => "OK", "version" => "1.0.1"},
        %{"delay" => 9, "errors" => 0, "height" => 2444784, "ip" => "149.56.126.216",
        "os" => "linux4.4.0-97-generic", "port" => 4001, "status" => "OK",
        "version" => "1.0.1"},
        "success" => true}
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
        %{"build" => "", "success" => true, "version" => "1.0.1"}
    """
    def get_peer_version do
        request = HTTPotion.get("https://api.arknode.net/api/peers/version")
        Poison.Parser.parse!(request.body)
    end
end
