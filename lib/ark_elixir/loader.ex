defmodule Ark_Elixir.Loader do
    def get_status do
        HTTPotion.get("https://api.arknode.net/api/loader/status")
        |> Map.get(:body)
    end

    def get_sync do
        HTTPotion.get("https://api.arknode.net/api/loader/status/sync")
        |> Map.get(:body)
    end

    def autoconfigure do
        HTTPotion.get("https://api.arknode.net/api/loader/autoconfigure")
        |> Map.get(:body)
    end
end
