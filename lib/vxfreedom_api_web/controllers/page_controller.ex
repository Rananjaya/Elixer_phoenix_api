defmodule VxfreedomApiWeb.PageController do
  use VxfreedomApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
