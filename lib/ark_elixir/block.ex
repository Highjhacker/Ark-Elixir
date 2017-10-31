defmodule Ark_Elixir.Block do
    @moduledoc """
    Operations for Blocks.
    """

    @doc """
    Get block by id.

    ## Examples

        iex> Ark_Elixir.Block.get_block("validBlockId")
        ...
    """
    def get_block(id) do
        HTTPotion.get("https://api.arknode.net/api/blocks/get", query: %{id: id})
        |> Map.get(:body)
    end

    @doc """
    Get all blocks.

    ## Examples

        iex> Ark_Elixir.Block.get_blocks
        ...
    """
    def get_blocks do
        # limit, orderBy, offset, generatorPublicKey, totalAmount, totalFee, reward, previousBlock, height
        HTTPotion.get("https://api.arknode.net/api/blocks")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain epoch.

    ## Examples

        iex> Ark_Elixir.Block.get_epoch
        ...
    """
    def get_epoch do
        HTTPotion.get("https://api.arknode.net/api/blocks/getEpoch")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain height.

    ## Examples

        iex> Ark_Elixir.Block.get_height
        ...
    """
    def get_height do
        HTTPotion.get("https://api.arknode.net/api/blocks/getHeight")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain nethash.

    ## Examples

        iex> Ark_Elixir.Block.get_nethash
        ...
    """
    def get_nethash do
        HTTPotion.get("https://api.arknode.net/api/blocks/getNethash")
        |> Map.get(:body)
    end

    @doc """
    Get the transaction fee for sending "normal" transactions.

    ## Examples

        iex> Ark_Elixir.Block.get_fee
        ...
    """
    def get_fee do
        HTTPotion.get("https://api.arknode.net/api/blocks/getFee")
        |> Map.get(:body)
    end

    @doc """
    Get the network fees.

    ## Examples

        iex> Ark_Elixir.Block.get_fees
        ...
    """
    def get_fees do
        HTTPotion.get("https://api.arknode.net/api/blocks/getFees")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain milestone.

    ## Examples

        iex> Ark_Elixir.Block.get_milestone
        ...
    """
    def get_milestone do
        HTTPotion.get("https://api.arknode.net/api/blocks/getMilestone")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain reward.

    ## Examples

        iex> Ark_Elixir.Block.get_reward
        ...
    """
    def get_reward do
        HTTPotion.get("https://api.arknode.net/api/blocks/getReward")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain supply.

    ## Examples

        iex> Ark_Elixir.Block.get_supply
        ...
    """
    def get_supply do
        HTTPotion.get("https://api.arknode.net/api/blocks/getSupply")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Block.get_status
        ...
    """
    def get_status do
        HTTPotion.get("https://api.arknode.net/api/blocks/getStatus")
        |> Map.get(:body)
    end
end
