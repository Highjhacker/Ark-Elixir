defmodule Ark_Elixir.Block do
    @moduledoc """
    Operations for Blocks.
    """

    @doc """
    Get block by id.
    """
    def get_block(id) do
        HTTPotion.get("https://api.arknode.net/api/blocks/get", query: %{id: id})
        |> Map.get(:body)
    end

    @doc """
    Get all blocks.
    """
    def get_blocks do
        # limit, orderBy, offset, generatorPublicKey, totalAmount, totalFee, reward, previousBlock, height
        HTTPotion.get("https://api.arknode.net/api/blocks")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain epoch.
    """
    def get_epoch do
        HTTPotion.get("https://api.arknode.net/api/blocks/getEpoch")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain height.
    """
    def get_height do
        HTTPotion.get("https://api.arknode.net/api/blocks/getHeight")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain nethash.
    """
    def get_nethash do
        HTTPotion.get("https://api.arknode.net/api/blocks/getNethash")
        |> Map.get(:body)
    end

    @doc """
    Get the transaction fee for sending "normal" transactions.
    """
    def get_fee do
        HTTPotion.get("https://api.arknode.net/api/blocks/getFee")
        |> Map.get(:body)
    end

    @doc """
    Get the network fees.
    """
    def get_fees do
        HTTPotion.get("https://api.arknode.net/api/blocks/getFees")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain milestone.
    """
    def get_milestone do
        HTTPotion.get("https://api.arknode.net/api/blocks/getMilestone")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain reward.
    """
    def get_reward do
        HTTPotion.get("https://api.arknode.net/api/blocks/getReward")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain supply.
    """
    def get_supply do
        HTTPotion.get("https://api.arknode.net/api/blocks/getSupply")
        |> Map.get(:body)
    end

    @doc """
    Get the blockchain status.
    """
    def get_status do
        HTTPotion.get("https://api.arknode.net/api/blocks/getStatus")
        |> Map.get(:body)
    end
end
