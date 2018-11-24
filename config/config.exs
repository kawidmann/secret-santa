# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :secret_santa,
  ecto_repos: [SecretSanta.Repo]

# Configures the endpoint
config :secret_santa, SecretSantaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YmjNoHxk0AroPBJGxkspJO43fA14Z8Q6HrdiSq3trmUdRAhHFASDWBKPaDYGeKR9",
  render_errors: [view: SecretSantaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SecretSanta.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
