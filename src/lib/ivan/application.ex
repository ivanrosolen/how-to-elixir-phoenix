defmodule Ivan.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Ivan.Repo,
      # Start the Telemetry supervisor
      IvanWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Ivan.PubSub},
      # Start the Endpoint (http/https)
      IvanWeb.Endpoint
      # Start a worker by calling: Ivan.Worker.start_link(arg)
      # {Ivan.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ivan.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    IvanWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
