defmodule PhxMapWebCompWeb.PageController do
  use PhxMapWebCompWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
