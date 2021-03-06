# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :restaurants, RestaurantsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rhJRXtEUKAGH6cSsBDGMyKumo6gc7sE9kwB0L3Yomoyqre5WOdgBnFBnteBisjm8",
  render_errors: [view: RestaurantsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Restaurants.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :tomato,
  zomato_api_key: "06f7e6b2df1c9baf49e3a69a3defac49",
  zomato_api_uri: "https://developers.zomato.com/api/v2.1/"
  
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
