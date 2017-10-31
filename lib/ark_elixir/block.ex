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
        request = HTTPotion.get("https://api.arknode.net/api/blocks/get", query: %{id: id})
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get all blocks.

    ## Examples

        iex> Ark_Elixir.Block.get_blocks
        ...
    """
    def get_blocks do
        # limit, orderBy, offset, generatorPublicKey, totalAmount, totalFee, reward, previousBlock, height
        request = HTTPotion.get("https://api.arknode.net/api/blocks")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain epoch.

    ## Examples

        iex> Ark_Elixir.Block.get_epoch
        ...
    """
    def get_epoch do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getEpoch")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain height.

    ## Examples

        iex> Ark_Elixir.Block.get_height
        ...
    """
    def get_height do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getHeight")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain nethash.

    ## Examples

        iex> Ark_Elixir.Block.get_nethash
        ...
    """
    def get_nethash do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getNethash")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the transaction fee for sending "normal" transactions.

    ## Examples

        iex> Ark_Elixir.Block.get_fee
        ...
    """
    def get_fee do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getFee")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the network fees.

    ## Examples

        iex> Ark_Elixir.Block.get_fees
        ...
    """
    def get_fees do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getFees")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain milestone.

    ## Examples

        iex> Ark_Elixir.Block.get_milestone
        ...
    """
    def get_milestone do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getMilestone")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain reward.

    ## Examples

        iex> Ark_Elixir.Block.get_reward
        ...
    """
    def get_reward do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getReward")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain supply.

    ## Examples

        iex> Ark_Elixir.Block.get_supply
        ...
    """
    def get_supply do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getSupply")
        Poison.Parser.parse!(request.body)
    end

    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Block.get_status
        ...
    """
    def get_status do
        request = HTTPotion.get("https://api.arknode.net/api/blocks/getStatus")
        Poison.Parser.parse!(request.body)
    end
end
