import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :marley_spoon, MarleySpoon.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "marley_spoon_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :marley_spoon, MarleySpoonWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "jle3AtjXvkTuaXat33Mm/nNUWDdJffi9CCO4VzvqJLrxjlGdnEOqqxSvrIliHHn+",
  server: false

# In test we don't send emails.
config :marley_spoon, MarleySpoon.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
