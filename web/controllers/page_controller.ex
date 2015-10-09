defmodule Placehodor.PageController do
  use Placehodor.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
