defmodule Ark_Elixir.Block do
    @moduledoc """
    Operations for Blocks.
    """

    @doc """
    Get block by id.

    ## Examples

        iex> Ark_Elixir.Block.get_block("570934191207974498")
        %{"block" => %{"blockSignature" => "304402201eb4097e7de1f2601e82333c040acac6df6458b7d59ec2370904fca42729243b022043d7ee08bf7007c06ec1119d12aa0ffe2895769f05c34fabc39f1c478a882049",
        "confirmations" => 68051,
        "generatorId" => "AdBSvLKPp6pMp5ZDsxkgjFu6KeCokncSMk",
        "generatorPublicKey" => "034682a4c4d2c8c0bc5f966dd422a83d2b433e212ef1f334f82cc3fe4676240933",
        "height" => 2376065, "id" => "570934191207974498",
        "numberOfTransactions" => 50,
        "payloadHash" => "04c497e303c9aaa16db51e52b139e87ec19666f7a0e0fb14804ba0dcf0a15932",
        "payloadLength" => 1600, "previousBlock" => "7483598217382372212",
        "reward" => 200000000, "timestamp" => 19174464,
        "totalAmount" => 15830360775, "totalFee" => 500000000,
        "totalForged" => "700000000", "version" => 0}, "success" => true}
        ...

        iex> Ark_Elixir.Block.get_block("570934191207974498", :dev)
    """
    def get_block(id, opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/get", [id: id, network: opts])
    end


    @doc """
    Get all blocks.

    Available parameters : limit, orderBy, offset, generatorPublicKey, totalAmount,
    totalFee, reward, previousBlock, height

    ## Examples

        iex> Ark_Elixir.Block.get_blocks
        %{"blocks" => [%{"blockSignature" => "304402204c38d0a94ea6aeef0ed227631325a054c9ca20921bc7559d0156f18debb5e9560220505ea4ca8129cb3911ff480b9d14f817fb1c556b5d31f8a74738ea673869a1f7",
         "confirmations" => 1,
         "generatorId" => "AR2iXnLRp9HuoT584m6tjNWLHGWdX8uuGK",
         "generatorPublicKey" => "03cefbfa0c1c853084591b62a9aad0116029eaebdc27c2e3b811b1b0aebb928fc6",
         "height" => 2444120, "id" => "4540914628264756366",
         "numberOfTransactions" => 0,
         "payloadHash" => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
         "payloadLength" => 0, "previousBlock" => "13708065140105554717",
         "reward" => 200000000, "timestamp" => 19732040, "totalAmount" => 0,
         "totalFee" => 0, "totalForged" => "200000000", "version" => 0},
         ...
         "success" => true}

         iex> Ark_Elixir.Block.get_blocks([limit: 2, orderBy: "timestamp"])
         iex> Ark_Elixir.Block.get_blocks([limit: 2, network: :dev, orderBy: "timestamp"])
         iex> Ark_Elixir.Block.get_blocks([limit: 2, orderBy: "timestamp", network: :dev])
         ...
    """
    def get_blocks(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks", opts)
    end


    @doc """
    Get the blockchain epoch.

    ## Examples

        iex> Ark_Elixir.Block.get_epoch
        %{"epoch" => "2017-03-21T13:00:00.000Z", "success" => true}

        iex> Ark_Elixir.Block.get_epoch(:dev)
    """
    def get_epoch(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getEpoch", [network: opts])
    end


    @doc """
    Get the blockchain height.

    ## Examples

        iex> Ark_Elixir.Block.get_height
        %{"height" => 2444130, "id" => "522159878673007074", "success" => true}

        iex> Ark_Elixir.Block.get_height(:dev)
    """
    def get_height(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getHeight", [network: opts])
    end


    @doc """
    Get the blockchain nethash.

    ## Examples

        iex> Ark_Elixir.Block.get_nethash
        %{"nethash" => "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988",
        "success" => true}

        iex> Ark_Elixir.Block.get_nethash(:dev)
    """
    def get_nethash(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getNethash", [network: opts])
    end


    @doc """
    Get the transaction fee for sending "normal" transactions.

    ## Examples

        iex> Ark_Elixir.Block.get_fee
        %{"fee" => 10000000, "success" => true}

        iex> Ark_Elixir.Block.get_fee(:dev)
    """
    def get_fee(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getFee", [network: opts])
    end


    @doc """
    Get the network fees.

    ## Examples

        iex> Ark_Elixir.Block.get_fees
        %{"fees" => %{"delegate" => 2500000000, "multisignature" => 500000000,
        "secondsignature" => 500000000, "send" => 10000000, "vote" => 100000000},
        "success" => true}

        iex> Ark_Elixir.Block.get_fees(:dev)
    """
    def get_fees(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getFees", [network: opts])
    end


    @doc """
    Get the blockchain milestone.

    ## Examples

        iex> Ark_Elixir.Block.get_milestone
        %{"milestone" => 0, "success" => true}

        iex> Ark_Elixir.Block.get_milestone(:dev)
    """
    def get_milestone(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getMilestone", [network: opts])
    end


    @doc """
    Get the blockchain reward.

    ## Examples

        iex> Ark_Elixir.Block.get_reward
        %{"reward" => 200000000, "success" => true}

        iex> Ark_Elixir.Block.get_reward(:dev)
    """
    def get_reward(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getReward", [network: opts])
    end


    @doc """
    Get the blockchain supply.

    ## Examples

        iex> Ark_Elixir.Block.get_supply
        %{"success" => true, "supply" => 12988828200000000}

        iex> Ark_Elixir.Block.get_supply(:dev)
    """
    def get_supply(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getSupply", [network: opts])
    end


    @doc """
    Get the blockchain status.

    ## Examples

        iex> Ark_Elixir.Block.get_status
        %{"epoch" => "2017-03-21T13:00:00.000Z", "fee" => 10000000, "height" => 2444143,
        "milestone" => 0,
        "nethash" => "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988",
        "reward" => 200000000, "success" => true, "supply" => 12988828600000000}

        iex> Ark_Elixir.Block.get_status(:dev)
    """
    def get_status(opts \\ []) do
        Ark_Elixir.Api.get("api/blocks/getStatus", [network: opts])
    end
end
