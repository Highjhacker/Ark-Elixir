defmodule Ark_Elixir.Api do
  use HTTPoison.Base
    @moduledoc """
    Operations for querying the API.
    """

    @type options :: Keyword.t
    @type path :: String.t
    @type response :: %{String.t => any}

    @doc """
    Allow us to make a request on the network of our choice, using get_main or
    get_dev, to the desired endpoint, with the possibility of passing optional
    parameters and the matching headers.

    The default network is Main.

    ## Examples

      iex> Ark_Elixir.Api.get("api/blocks") # Query on the main net
      iex> Ark_Elixir.Api.get("api/blocks", [limit: 2]) # Query on the main net
      iex> Ark_Elixir.Api.get("api/blocks", [limit: 2, network: :dev]) # Query on the dev net
      iex> Ark_Elixir.Api.get("api/blocks", [network: :dev, limit: 2]) # In any order
      iex> Ark_Elixir.Api.get("api/blocks", [network: :dev]) # No query params, just the network and the whole response
      iex> Ark_Elixir.Api.get("api/blocks", [network: :bar]) # Incorrect network, switching on the main one
      iex> Ark_Elixir.Api.get("api/blocks", [network: :dev]) # You can specify the network as an Atom
    """
    @spec get(path, options) :: response
    def get(endpoint, opts \\ []) do
      case opts[:network] do
        :main -> get_main(endpoint, opts)
        :dev -> get_dev(endpoint, opts)
        :dark -> get_dev(endpoint, opts)
        _ -> get_main(endpoint, opts)
      end
    end

    @doc """
    Allow us to make a request on the Main network to the desired endpoint, with
    the possibility of passing optional parameters.
    """
    @spec get_main(path, options) :: response
    def get_main(endpoint, opts \\ []) do
      response = HTTPoison.get!("https://api.arknode.net/#{endpoint}" <> query(opts), get_main_headers())
      Poison.decode!(response.body)
    end


    @doc """
    Get the adequates headers for the Ark Main network.
    """
    @spec get_main_headers() :: [nethash: String.t(), version: String.t(), port: String.t()]
    def get_main_headers do
      [
        nethash: "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988",
        version: "1.0.1",
        port: "4001",
      ]
    end

    @doc """
    Allow us to make a request on the Dev network to the desired endpoint, with
    the possibility of passing optional parameters.
    """
    @spec get_dev(path, options) :: response
    def get_dev(endpoint, opts \\ []) do
      response = HTTPoison.get!("http://167.114.29.55:4002/#{endpoint}" <> query(opts), get_main_headers())
      Poison.decode!(response.body)
    end

    @doc """
    Get the adequates headers for the Ark Dev network.
    """
    @spec get_dev_headers() :: [nethash: String.t(), version: String.t(), port: String.t()]
    def get_dev_headers do
      [
        nethash: "578e820911f24e039733b45e4882b73e301f813a0d2c31330dafda84534ffa23",
        version: "1.1.1",
        port: "4002",
      ]
    end

    @doc """
    Allow us to pass optional parameters to our request.
    """
    @spec query(options) :: String.t()
    def query(opts \\ []) when is_list(opts) do
        string = opts
        |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
        |> Enum.join("&")

        "?" <> string
    end

    # More for the idea than anything else. Currently it should work, but the
    # Erlang beam crashed, telling the following message :
    # eheap_alloc: Cannot allocate 915463784 bytes of memory (of type "heap").
    """
    def get_best_dev_peers do
      peers = get_dev("api/peers")
      peers["peers"]
      |> Enum.map(fn (x) -> %{ip: x["ip"], delay: x["delay"]} end)
      |> Enum.sort
      |> Enum.slice(0, 10)
    end

    def get_random_viable_peer do
      get_best_dev_peers()
      |> Enum.random
    end

    def get_ip_from_random_peer do
      get_random_viable_peer()
      |> Enum.at(1)
      |> elem(1)
    end
    """
end
