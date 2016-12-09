defmodule PhoenixTest.TestController do
  use PhoenixTest.Web, :controller

  def index(conn, _params) do
    render conn, "test.html"
  end
end
