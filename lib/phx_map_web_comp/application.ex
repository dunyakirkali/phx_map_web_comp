defmodule PhxMapWebComp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhxMapWebComp.Repo,
      # Start the Telemetry supervisor
      PhxMapWebCompWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhxMapWebComp.PubSub},
      # Start the Endpoint (http/https)
      PhxMapWebCompWeb.Endpoint
      # Start a worker by calling: PhxMapWebComp.Worker.start_link(arg)
      # {PhxMapWebComp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhxMapWebComp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhxMapWebCompWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
