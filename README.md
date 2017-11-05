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
    {:ark_elixir, "~> 0.1.1"}
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
iex> Ark_Elixir.Delegate.search_delegates("dr")

%{"delegates" => [%{"address" => "ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9",
     "missedblocks" => 185, "producedblocks" => 27885,
     "publicKey" => "031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008",
     "username" => "dr10", "vote" => "146562346585178"},
   %{"address" => "AGzLMjoUiLbccC4YpaDsMRwHaoUwCoorQG", "missedblocks" => 0,
     "producedblocks" => 0,
     "publicKey" => "038dfc041c7e609f254b2cf38de4b55e02dff9e743497f5cf6b67d49d8e44978ce",
     "username" => "drusilla", "vote" => "0"},
   %{"address" => "AUf8qWdgywo9c8P5oD48bz3Dv7ZK5K2giX", "missedblocks" => 28,
     "producedblocks" => 38929,
     "publicKey" => "03fe97236cc043ebb977c9ba79eee808da0615d85681185e997592347846444c61",
     "username" => "gr33ndrag0n", "vote" => "3033651019152"},
   %{"address" => "AMyGKY2TdTujzzBiPvP3C27twAFy37SdqF", "missedblocks" => 5,
     "producedblocks" => 292,
     "publicKey" => "03c29c149ca840d5717f8bf0d606dcdf007ef88b9fb2ebbfd57e9cee7845066e8c",
     "username" => "videodrome", "vote" => "3334733141"}], "success" => true}
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
	- [ ] Currently the parameters nethash version and port are passed, but it should be more clear than that,   worth looking at metaprogramming & macros or something like that.
- [ ] Unit testing.
- [x] Better documentation.
- [ ] Handle optionals parameters in the http requests.
- [ ] ...

## Authors

- Jolan Beer - Highjhacker

## License

Ark_Elixir is under MIT license. See the [LICENSE file](https://github.com/Highjhacker/Ark-Elixir/blob/master/LICENSE) for more informations.
