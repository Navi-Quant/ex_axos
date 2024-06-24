defmodule ExAxos.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_axos,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:styler, "~> 0.11", only: [:dev, :test], runtime: false},
      {:oapi_generator, "~> 0.1.1", only: :dev, runtime: false},
      {:req, "0.5.0"}
    ]
  end

  defp aliases do
    [
      gen_api: ["api.gen default priv/axos_openapi_spec.yaml"],
      clean_api: ["cmd rm -rf lib/operations lib/schema"],
      reset_api: ["clean_api", "gen_api"]
    ]
  end
end
