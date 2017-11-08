defmodule Ark_Elixir.Api do
    @moduledoc """

    """
    def get(endpoint, opts \\ []) do
        HTTPotion.get("https://api.arknode.net/#{endpoint}" <> query(opts),
            headers: [nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988", version: "1.0.1", port: "4001"])
        |> Map.get(:body)
        |> Poison.Parser.parse!
    end

    def query(opts) do
        string = opts
        |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
        |> Enum.join("&")

        "?" <> string
    end
end
