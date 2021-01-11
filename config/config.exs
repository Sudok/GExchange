# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :g_exchange,
  ecto_repos: [GExchange.Repo]

# Configures the endpoint
config :g_exchange, GExchangeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wfdQSwP+frvEXwTITattRvtrI9o3qTiJkPW7Nc5W1DyotYKKR5azTkpeLG4FnVQu",
  render_errors: [view: GExchangeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GExchange.PubSub,
  live_view: [signing_salt: "LCUtX/uP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
