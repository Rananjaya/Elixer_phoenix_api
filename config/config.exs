# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vxfreedom_api,
  ecto_repos: [VxfreedomApi.Repo]

# Configures the endpoint
config :vxfreedom_api, VxfreedomApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gpd8AXO78juWAaIsMLeJo5mc0Aw569B1covkPkVhLorYgDXfNerFAEDUoC5OKoAm",
  render_errors: [view: VxfreedomApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: VxfreedomApi.PubSub,
  live_view: [signing_salt: "zLuEsBWw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
