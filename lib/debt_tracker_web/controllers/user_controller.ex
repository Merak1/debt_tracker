defmodule DebtTrackerWeb.UserController do
  use DebtTrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
