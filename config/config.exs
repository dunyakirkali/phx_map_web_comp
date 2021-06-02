# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_map_web_comp,
  ecto_repos: [PhxMapWebComp.Repo]

# Configures the endpoint
config :phx_map_web_comp, PhxMapWebCompWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GwU9ijgfUPG9SAyzpCpps8/yTqXw5h2gELflvIE3fMaA8oRAlK4mel0eCbakUVds",
  render_errors: [view: PhxMapWebCompWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxMapWebComp.PubSub,
  live_view: [signing_salt: "cQW4iL2B"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
