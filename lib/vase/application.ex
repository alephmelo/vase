defmodule Vase.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Vase.Worker.start_link(arg)
      # {Vase.Worker, arg}
      {Plug.Cowboy, scheme: :http, plug: Vase.HelloPlug, options: [port: 8080]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    Logger.info("Starting application...")
    opts = [strategy: :one_for_one, name: Vase.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
