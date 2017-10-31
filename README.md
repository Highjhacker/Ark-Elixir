# Ark_Elixir

Ark API Wrapper in Elixir.

## Installation

The package can be installed by adding `ark_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ark_elixir, "~> 0.1.0"}
  ]
end
```

Full documentation docs can be found at [https://hexdocs.pm/ark_elixir](https://hexdocs.pm/ark_elixir).

## Usage

You can use this package from your own project of from the Elixir interpreter (IEX). For the
later, you need to follow these instructions :

```elixir
$ iex -S mix # Launch the Elixir Interpreter and load the deps.
# Now you are inside the interpreter.
iex> Ark_Elixir.Account.get_delegate_fee

"{\"success\":true,\"fee\":2500000000}"
```

### Account

```elixir
iex> Ark_Elixir.Account.get_delegate_fee

"{\"success\":true,\"fee\":2500000000}"
```

### Block

```elixir
iex> Ark_Elixir.Block.get_status

"{\"success\":true,\"epoch\":\"2017-03-21T13:00:00.000Z\",\"height\":2390561,\"fee\":10000000,\"milestone\":0,\"nethash\":\"6e84d08bd299ed97c212c886c98a57e36545c8f5d645ca7eeae63a8bd62d8988\",\"reward\":200000000,\"supply\":12978112200000000}"
```

### Delegate

```elixir
iex> Ark_Elixir.Delegate.search_delegates("dr")

"{\"success\":true,\"delegates\":[{\"username\":\"dr10\",\"address\":\"ANwjGUcVbLXpqbBUWbjUBQWkr4MWVDuJu9\",\"publicKey\":\"031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008\",\"vote\":\"146008523685645\",\"producedblocks\":27733,\"missedblocks\":182},{\"username\":\"drusilla\",\"address\":\"AGzLMjoUiLbccC4YpaDsMRwHaoUwCoorQG\",\"publicKey\":\"038dfc041c7e609f254b2cf38de4b55e02dff9e743497f5cf6b67d49d8e44978ce\",\"vote\":\"0\",\"producedblocks\":0,\"missedblocks\":0},{\"username\":\"gr33ndrag0n\",\"address\":\"AUf8qWdgywo9c8P5oD48bz3Dv7ZK5K2giX\",\"publicKey\":\"03fe97236cc043ebb977c9ba79eee808da0615d85681185e997592347846444c61\",\"vote\":\"3033651019152\",\"producedblocks\":38929,\"missedblocks\":28},{\"username\":\"videodrome\",\"address\":\"AMyGKY2TdTujzzBiPvP3C27twAFy37SdqF\",\"publicKey\":\"03c29c149ca840d5717f8bf0d606dcdf007ef88b9fb2ebbfd57e9cee7845066e8c\",\"vote\":\"3334733141\",\"producedblocks\":292,\"missedblocks\":5}]}"
```

### Loader

```elixir
iex> Ark_Elixir.Loader.get_sync

"{\"success\":true,\"syncing\":false,\"blocks\":-1,\"height\":2390571,\"id\":\"4903519278228018918\"}"
```

### MultiSignature

```elixir
iex> Ark_Elixir.MultiSignature.get_pending("031641ff081b93279b669f7771b3fbe48ade13eadb6d5fd85bdd025655e349f008")

"{\"success\":true,\"transactions\":[]}"
```

### Peer

```elixir
iex> Ark_Elixir.Peer.get_peer_version

"{\"success\":true,\"version\":\"1.0.1\",\"build\":\"\"}"
```

### Signature

```elixir
iex> Ark_Elixir.Signature.get_signature_fee

"{\"success\":true,\"fee\":500000000}"
```

### Transaction

```elixir
iex> Ark_Elixir.Transaction.get_unconfirmed_transactions

"{\"success\":true,\"transactions\":[]}"
```

### Transport

```elixir

```

## TODOS

- [ ] Add the parameters nethash, version and port to ALL of the requests.
- [ ] Unit testing.
- [ ] Better documentation.
- [ ] Handle optionals parameters in the http requests.
- [ ] ...


## License

Ark_Elixir is under MIT license. See the [LICENSE file](https://github.com/Highjhacker/Ark-Elixir/blob/master/LICENSE) for more informations.
