defmodule PackageTest.Mixfile do
  use Mix.Project

  def project do
    [app: :package_test,
     version: "0.0.1",
     elixir: "~> 0.13.0",
     deps: deps()]
  end

  def application, do: []

  defp deps do
    [{:paasaa, "~> 0.2.0"}]
  end
end
