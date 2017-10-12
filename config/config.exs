# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx,
  ecto_repos: [Phx.Repo]

# Configures the endpoint
config :phx, PhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JdbRjv+O0bRmDsHnES6b1OHf/8bNiGEbxdT59TQgQlxQeGAhWJwpeRPHjRqQLDOc",
  render_errors: [view: PhxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
