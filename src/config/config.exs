# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ivan,
  ecto_repos: [Ivan.Repo]

# Configures the endpoint
config :ivan, IvanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H8DxGebh5nnEUpRX6G8Q62ynhEgjGXPkYi8F19NgMQTMbOKYuv22ES0707qIAuOS",
  render_errors: [view: IvanWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ivan.PubSub,
  live_view: [signing_salt: "lNTI6qs0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
