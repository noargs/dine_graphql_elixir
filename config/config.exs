# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dine,
  ecto_repos: [Dine.Repo]

# Configures the endpoint
config :dine, DineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ds25xKdcYGvsKfFeRSJ2TCpm2+oQdYMdGZyU9Uv3RGZDOVSV8XjtGWwGHTmCyJAC",
  render_errors: [view: DineWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Dine.PubSub,
  live_view: [signing_salt: "mvRcZ/xp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
