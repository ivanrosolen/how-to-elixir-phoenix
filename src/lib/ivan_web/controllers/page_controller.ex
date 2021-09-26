defmodule IvanWeb.PageController do
  use IvanWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
