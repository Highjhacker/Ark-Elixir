![alt-text](https://i.imgur.com/NzAX0oB.png)

[![HitCount](http://hits.dwyl.io/Highjhacker/Ark-Elixir.svg)](http://hits.dwyl.io/Highjhacker/Ark-Elixir) [![Build Status](https://travis-ci.org/Highjhacker/Ark-Elixir.svg?branch=master)](https://travis-ci.org/Highjhacker/Ark-Elixir) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Hex.pm](https://img.shields.io/hexpm/v/ark_elixir.svg)](https://hex.pm/packages/ark_elixir)

# Ark_Elixir

Ark API Wrapper in Elixir.

## Built with
- [Elixir](https://elixir-lang.org/) (1.5.0)
- [HTTPotion](https://github.com/myfreeweb/httpotion)
- [Poison](https://github.com/devinus/poison)

## Installation

The package can be installed by adding `ark_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ark_elixir, "~> 0.1.4"}
  ]
end
```

Full documentation docs can be found at [https://hexdocs.pm/ark_elixir](https://hexdocs.pm/ark_elixir/Ark_Elixir.html).

## Application Example

[Ark-Elixir-Example](https://github.com/Highjhacker/Ark-Elixir-Example)

## Usage

You can use this package from your own project of from the Elixir interpreter (IEX). For the
later, you need to follow these instructions :

```elixir
$ iex -S mix # Launch the Elixir Interpreter and load the deps.
# Now you are inside the interpreter.
iex> Ark_Elixir.Account.get_delegate_fee

%{"fee" => 2500000000, "success" => true}
```

### Network
With the release of the 0.1.3, we should be able to switch between networks. For example, query on the
dev network instead of the main one. The current implementation works as intended.

Every modules (Account, Block, ...) can use this feature to make a query on a different network.

The currently available networks are the followings ; :dev, :main, :kapu

A few examples for getting started :

```elixir
# Won't work cause it's a main block
Ark_Elixir.Block.get_block("570934191207974498", [network: :dev])
# Will work cause by default, the main network is choosed
Ark_Elixir.Block.get_block("570934191207974498")
# You can specify it again, just to be sure.
# Like this
Ark_Elixir.Block.get_block("570934191207974498", [network: :main])

# For more complex queries with a lot of others parameters, it's quite simple too
Ark_Elixir.Block.get_blocks([limit: 2, orderBy: "timestamp", network: :dev])
# Order doesn't matter
Ark_Elixir.Block.get_blocks([limit: 2, network: :dev, orderBy: "timestamp"])

# For simple queries like "get_height" it's simple too !
# You can still use the basic version without parameters
iex> Ark_Elixir.Block.get_height
# Or
iex> Ark_Elixir.Block.get_height([network: :dev])
```

### Account

```elixir
iex> Ark_Elixir.Account.get_delegate_fee
%{"fee" => 2500000000, "success" => true}
```

### Block

```elixir
iex> Ark_Elixir.Block.get_status
%{"epoch" => "2017-03-21T13:00:00.000Z", "fee" => 10000000, "height" => 2398397,
  "milestone" => 0,
  "nethash" => "6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988",
  "reward" => 200000000, "success" => true, "supply" => 12979679400000000}
```

### Delegate

```elixir
iex> Ark_Elixir.Delegate.search_delegates("dr", [limit: 2])

%{"delegates" => [%{"address" => "ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9",
     "missedblocks" => 185, "producedblocks" => 27885,
     "publicKey" => "031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008",
     "username" => "dr10", "vote" => "146562346585178"},
   %{"address" => "AGzLMjoUiLbccC4YpaDsMRwHaoUwCoorQG", "missedblocks" => 0,
     "producedblocks" => 0,
     "publicKey" => "038dfc041c7e609f254b2cf38de4b55e02dff9e743497f5cf6b67d49d8e44978ce",
     "username" => "drusilla", "vote" => "0"}], "success" => true}
```

### Loader

```elixir
iex> Ark_Elixir.Loader.get_sync

%{"blocks" => -1, "height" => 2398387, "id" => "15965717638551654721",
  "success" => true, "syncing" => false}
```

### MultiSignature

```elixir
iex> Ark_Elixir.MultiSignature.get_pending("031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008")

%{"success" => true, "transactions" => []}
```

### Peer

```elixir
iex> Ark_Elixir.Peer.get_peer_version

%{"build" => "", "success" => true, "version" => "1.0.1"}
```

### Signature

```elixir
iex> Ark_Elixir.Signature.get_signature_fee

%{"fee" => 500000000, "success" => true}
```

### Transaction

```elixir
iex> Ark_Elixir.Transaction.get_unconfirmed_transactions

%{"success" => true, "transactions" => []}
```

### Transport

```elixir
iex> Ark_Elixir.Transport_get_status

%{"currentSlot" => 2419644, "forgingAllowed" => true,
  "header" => %{"blockSignature" => "3045022100f4dd371c67e3aa37755776d34b1ce13f4fe0c93baab171c043021f8a45a8363d02200f38be5a9530b67872a664b4393d65212a0819892e460de9b9dc0f4fe00620c2",
    "generatorPublicKey" => "027a9b5dc98c75902f871e889fb3076dd27b11e158a49e3915e0307ecd9781f51e",
    "height" => 2398359, "id" => "9261061247945614841",
    "numberOfTransactions" => 0,
    "payloadHash" => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
    "payloadLength" => 0, "previousBlock" => "17187959446755691458",
    "reward" => 200000000, "timestamp" => 19357144, "totalAmount" => 0,
    "totalFee" => 0, "version" => 0}, "height" => 2398359, "success" => true}
```

## TODOS

- [x] Add the parameters nethash, version and port to ALL of the requests.
- [x] Unit testing.
    - [ ] Few tests are missing.
- [x] Better documentation.
- [x] Handle optionals parameters in the http requests.
- [ ] Example app in Erlang.
- [x] Setup Travis.
- [ ] Setup [Code Coverage](https://github.com/dwyl/repo-badges).
- [x] Handle dev network (and others network eventually).
- [ ] Handle timeouts of the query. If one of the query doesn't works, we should maybe retry the same query on an other valid url from the same network ?
- [ ] Create a new transaction.
- [ ] ...

## Authors

- Jolan Beer - Highjhacker

## Contributors
-
-

## License

Ark_Elixir is under MIT license. See the [LICENSE file](https://github.com/Highjhacker/Ark-Elixir/blob/master/LICENSE) for more informations.
