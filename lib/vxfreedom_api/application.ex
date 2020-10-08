defmodule VxfreedomApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      VxfreedomApi.Repo,
      # Start the Telemetry supervisor
      VxfreedomApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: VxfreedomApi.PubSub},
      # Start the Endpoint (http/https)
      VxfreedomApiWeb.Endpoint
      # Start a worker by calling: VxfreedomApi.Worker.start_link(arg)
      # {VxfreedomApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: VxfreedomApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    VxfreedomApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
