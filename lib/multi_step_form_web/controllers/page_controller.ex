defmodule MultiStepFormWeb.PageController do
  use MultiStepFormWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
