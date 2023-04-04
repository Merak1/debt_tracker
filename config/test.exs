import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :debt_tracker, DebtTracker.Repo,
  username: "postgres",
  password: "postgres",
  database: "debt_tracker_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :debt_tracker, DebtTrackerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "lzMLAVGEUw1bDKTmAnpnCUI4p4t5bwvjNXGME2U8C+5RM4M1VhJmsuvpptcRkkju",
  server: false

# In test we don't send emails.
config :debt_tracker, DebtTracker.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
