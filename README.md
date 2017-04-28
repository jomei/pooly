# Pooly

Simple process pool.

## Usage
```elixir
pool_config = [
  mfa: {SampleWorker, :start_link, []},
  size: 5
]

Pooly.start_pool(pool_config)
```