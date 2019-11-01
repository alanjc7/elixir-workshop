defmodule RestaurantsWeb.RestaurantController do
  use RestaurantsWeb, :controller

  @lisbon_id 82
  @london_id 61

  def index(conn, _params) do
    {:ok, restaurants} = Tomato.search(%{entity_type: "city", entity_id: @london_id})
    render(conn, "index.html", restaurants: restaurants)
  end
end
