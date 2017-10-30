defmodule Ark_Elixir.Peer do
    def get_peer(ip, port) do
        HTTPotion.get("https://api.arknode.net/api/peers/get", query: %{ip: ip, port: port})
        |> Map.get(:body)
    end

    def get_peers do
        # port, state, os, version, orderBy, limit, offset
        HTTPotion.get("https://api.arknode.net/api/peers")
        |> Map.get(:body)
    end

    def get_peer_version do
        HTTPotion.get("https://api.arknode.net/api/peers/version")
        |> Map.get(:body)
    end
end
