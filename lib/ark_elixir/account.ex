defmodule Ark_Elixir.Account do
    @moduledoc """
    Operations for Accounts.
    """

    @doc """
    Get the balance of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_balance("ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9")
        %{"balance" => "272613067142", "success" => true,
          "unconfirmedBalance" => "272613067142"}
    """
    def get_balance(address) do
        request = HTTPotion.get("https://api.arknode.net/api/accounts/getBalance", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get the public key of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_public_key("ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9")
        %{"publicKey" => "031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008",
          "success" => true}
    """
    def get_public_key(address) do
        request = HTTPotion.get("https://api.arknode.net/api/accounts/getPublicKey", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get the delegate fee of an account.

    ## Examples

        iex> Ark_Elixir.Account.get_delegate_fee
        %{"fee" => 2500000000, "success" => true}
    """
    def get_delegate_fee do
        request = HTTPotion.get("https://api.arknode.net/api/accounts/delegates/fee")
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get the delegates of an account.

    ## Examples

    Ark_Elixir.Account.get_delegates("AccacXRhyBJSZ3VjQWvRuzsubes58A5gmA")
    %{"delegates" => [%{"address" => "ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9",
     "approval" => 1.13, "missedblocks" => 185, "producedblocks" => 28791,
     "productivity" => 99.36,
     "publicKey" => "031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008",
     "rate" => 9, "username" => "dr10", "vote" => "147374436754240"}],
     "success" => true}
    """
    def get_delegates(address) do
        # orderBy, limit, offset
        request = HTTPotion.get("https://api.arknode.net/api/accounts/delegates", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Return account information of an address.

    ## Examples

        iex> Ark_Elixir.Account.get_accounts("ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9")
        %{"account" => %{"address" => "ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9",
        "balance" => "272813067142", "multisignatures" => [],
        "publicKey" => "031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008",
        "secondPublicKey" => "0333192715d63b4c2ba3b93e01aa996920e9ab794444d618c9c5baaf327ff9ede4",
        "secondSignature" => 1, "u_multisignatures" => [],
        "unconfirmedBalance" => "272813067142", "unconfirmedSignature" => 1},
        "success" => true}
    """
    def get_accounts(address) do
        request = HTTPotion.get("https://api.arknode.net/api/accounts", query: %{address: address})
        Poison.Parser.parse!(request.body)
    end


    @doc """
    Get a list of top accounts.

    ## Examples

        iex> Ark_Elixir.Account.get_top_accounts
        %{"accounts" => [%{"address" => "AUDud8tvyVZa67p3QY7XPRUTjRGnWQQ9Xv",
         "balance" => "2125000000000000",
         "publicKey" => "021d03bace0687a1a5e797f884b13fb46f817ec32de1374a7f223f24404401d220"},
         %{"address" => "AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK",
         "balance" => "1451014941046622",
         "publicKey" => "02ff171adaef486b7db9fc160b28433d20cf43163d56fd28fee72145f0d5219a4b"},
         ...
         "success" => true}
    """
    def get_top_accounts do
        # limit, offset
        request = HTTPotion.get("https://api.arknode.net/api/accounts/top")
        Poison.Parser.parse!(request.body)
    end

end
