defmodule BlitzLolWeb.PageController do
  use BlitzLolWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
