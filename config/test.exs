import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blitz_lol, BlitzLolWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "8xojeELNYmRhXSsW91H83s/4MHth8GhFgBwnLgEaQK2usDcL9sWwNV1pr/e2BWUU",
  server: false

# In test we don't send emails.
config :blitz_lol, BlitzLol.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
