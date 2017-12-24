defmodule Ark_Elixir.Delegate do
    @moduledoc """
    Operations for Delegates.
    """

    @doc """
    Get the count of delegates.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegates_count("ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9")
        %{"count" => 581, "success" => true}
    """
    def get_delegates_count(address) do
        Ark_Elixir.Api.get("api/delegates/count", [address: address])
    end


    @doc """
    Search for specific delegates.

    Available parameters : limit

    ## Examples

        iex> Ark_Elixir.Delegate.search_delegates([q: "dr", limit: 2])
        %{"delegates" => [%{"address" => "ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9",
         "missedblocks" => 188, "producedblocks" => 29434,
         "publicKey" => "031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008",
         "username" => "dr10", "vote" => "148061108825578"},
       %{"address" => "AGzLMjoUiLbccC4YpaDsMRwHaoUwCoorQG", "missedblocks" => 0,
         "producedblocks" => 0,
         "publicKey" => "038dfc041c7e609f254b2cf38de4b55e02dff9e743497f5cf6b67d49d8e44978ce",
         "username" => "drusilla", "vote" => "0"}], "success" => true}
    """
    def search_delegates(query, opts \\ []) do
        Ark_Elixir.Api.get("api/delegates/search", query)
    end


    @doc """
    Get a list of voters for a delegate.

    ## Examples

        iex> Ark_Elixir.Delegate.get_voters("031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008")
        %{"accounts" => [%{"address" => "AGbc5hJCHmVTKZ9ty6Q2JquewXVXasMuAj",
        "balance" => "0",
        "publicKey" => "03585b34d262cdd23f79cf31d2cdd3a51c9577c534042e9865c0481c0ea777fc70",
        "username" => nil},
        %{"address" => "ASct4VK5V8Q7EhFkkrppe2XhdnijisYAm7", "balance" => "0",
        "publicKey" => "0311e42435885f384fe2ededcd38f0f9ce2dba55d6a796624f5deb198a65d80c2e",
        "username" => nil},
        ...
        "success" => true}
    """
    def get_voters(publicKey) do
        Ark_Elixir.Api.get("api/delegates/voters", [publicKey: publicKey])
    end


    @doc """
    Get a single delegate by name or public key.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate("jarunik")
        %{"delegate" => %{"address" => "Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t",
        "approval" => 1.09, "missedblocks" => 133, "producedblocks" => 38237,
        "productivity" => 99.65,
        "publicKey" => "02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de",
        "rate" => 35, "username" => "jarunik", "vote" => "141330551085778"},
        "success" => true}

        iex> Ark_Elixir.Delegate.get_delegate("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        %{"delegate" => %{"address" => "Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t",
        "approval" => 1.18, "missedblocks" => 227, "producedblocks" => 48565,
        "productivity" => 99.53,
        "publicKey" => "02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de",
        "rate" => 4, "username" => "jarunik", "vote" => "154019617402053"},
        "success" => true}
    """
    def get_delegate(id) do
      case String.length(id) do
        66 -> Ark_Elixir.Api.get("api/delegates/get", [publicKey: id])
        _ -> Ark_Elixir.Api.get("api/delegates/get", [username: id])
      end
    end


    @doc """
    Get all delegates.

    Available parameters : orderBy, limit, offset

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegates
        %{"delegates" => [%{"address" => "ARAq9nhjCxwpWnGKDgxveAJSijNG8Y6dFQ",
         "approval" => 1.31, "missedblocks" => 238, "producedblocks" => 47123,
         "productivity" => 99.5,
         "publicKey" => "02b1d2ea7c265db66087789f571fceb8cc2b2d89e296ad966efb8ed51855f2ae0b",
         "rate" => 1, "username" => "arkpool", "vote" => "169516102709856"},
       %{"address" => "ASvYCmBFTZW6R52SrZexQFwZbErKcLLSW9", "approval" => 1.23,
         "missedblocks" => 83, "producedblocks" => 13323, "productivity" => 99.38,
         "publicKey" => "0226c1d974f21f9e0ec5bc7d2dcabdc481869b289c77f4f1b068ed154c5dd3e01e",
         "rate" => 2, "username" => "boxpool", "vote" => "159198762918307"},
         ...
         ...], "success" => true, "totalCount" => 581}

         iex> Ark_Elixir.Delegate.get_delegates([limit: 2, orderBy: "productivity"])
         ...
    """
    def get_delegates(opts \\ []) do
        Ark_Elixir.Api.get("api/delegates", opts)
    end


    @doc """
    Get the delegate fee.

    ## Examples

        iex> Ark_Elixir.Delegate.get_delegate_fee("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        %{"fee" => 2500000000, "success" => true}
    """
    def get_delegate_fee(address) do
        Ark_Elixir.Api.get("api/delegates/fee", [address: address])
    end


    @doc """
    Get the amount of ARKs forged by an account.

    ## Examples

        iex> Ark_Elixir.Delegate.get_forged_by_account("02c7455bebeadde04728441e0f57f82f972155c088252bf7c1365eb0dc84fbf5de")
        %{"fees" => "110200000000", "forged" => "7757800000000",
        "rewards" => "7647600000000", "success" => true}
    """
    def get_forged_by_account(generatorPublicKey) do
        Ark_Elixir.Api.get("api/delegates/forging/getForgedByAccount", [generatorPublicKey: generatorPublicKey])
    end


    @doc """
    Get the next forger.

    ## Examples

        iex> Ark_Elixir.Delegate.get_next_forgers("Aasu14aTs9ipZdy1FMv7ay1Vqn3jPskA8t")
        %{"currentBlock" => 2444729, "currentSlot" => 2467127,
        "delegates" => ["02b54f00d9de5a3ace28913fe78a15afcfe242926e94d9b517d06d2705b261f992",
        "027acdf24b004a7b1e6be2adf746e3233ce034dbb7e83d4a900f367efc4abd0f21",
        "027c550ecc71e4d9b832cf83c1c5c4d7c22dc43e3a451fea887c82a6ef55bf52fa",
        "032f2df8a6bae16b58172460149426dd6c1aa13ccb1bea0051081b1fc17f1befea",
        "022bb6c5050444b24ba91b3959800c4df8c678a5d7293b4b43df17bffec03ae027",
        "0232b96d57ac27f9a99242bc886e433baa89f596d435153c9dae47222c0d1cecc3",
        "034682a4c4d2c8c0bc5f966dd422a83d2b433e212ef1f334f82cc3fe4676240933",
        "03ca4edbdc4e83eb6f1b8780a532c74a3708d51f281b6bfb9a308d49c47d3ac90d",
        "02b1d2ea7c265db66087789f571fceb8cc2b2d89e296ad966efb8ed51855f2ae0b",
        "035a0302ddd571bb821f6b069450814cb29fc927f14f146491fd5c9b3ab57d8ca8"],
        success" => true}
    """
    def get_next_forgers(address) do
        Ark_Elixir.Api.get("api/delegates/getNextForgers", [address: address])
    end
end
