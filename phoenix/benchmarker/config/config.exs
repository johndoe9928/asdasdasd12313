# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :benchmarker,
  ecto_repos: [Benchmarker.Repo]

# Configures the endpoint
config :benchmarker, BenchmarkerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JGMgCksr0DJCpgBNyhxX7AcLUsNla78xSFay8/AA5Z53vom7sGctZogR4BBGNcMV",
  render_errors: [view: BenchmarkerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Benchmarker.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
