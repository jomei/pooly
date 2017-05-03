defmodule Pooly.Supervisor do
  use Supervisor

  def start_link(pool_cofig) do
    Supervisor.start_link(__MODULE__, pool_cofig)
  end

  def init(pool_config) do
    children = [
      worker(Pooly.Server, [self, pool_config])
    ]

    opts = [strategy: :one_for_all]

    supervise(children, opts)
  end
end