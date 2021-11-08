# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :blitz_lol,
  riot_api_key: System.get_env("RIOT_API_KEY") ||
  raise """
  environment variable RIOT_API_KEY is missing or
  you need to source your .env file
  """

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Poison

config :esbuild, :version, "0.13.10"
