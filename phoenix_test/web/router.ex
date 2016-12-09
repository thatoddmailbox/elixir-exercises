defmodule PhoenixTest.Router do
  use PhoenixTest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixTest do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/paasaa", PaasaaController, :index
    get "/paasaa/result", PaasaaController, :result
    get "/paasaa/pdf_result", PaasaaController, :pdf_result
    get "/test", TestController, :index
    get "/data", DataController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixTest do
  #   pipe_through :api
  # end
end
