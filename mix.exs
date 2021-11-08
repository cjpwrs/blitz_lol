defmodule BlitzLol.MixProject do
  use Mix.Project

  def project do
    [
      app: :blitz_lol,
      version: "0.1.0",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      docs: docs()
    ]
  end

  def docs do
    [
      main: "readme",
      extras: [
        "ABOUT.md",
        "README.md"
      ]
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      # mod: {BlitzLol.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.6.2"},
      {:phoenix_html, "~> 3.0"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_live_view, "~> 0.16.0"},
      {:floki, ">= 0.30.0", only: :test},
      {:esbuild, "~> 0.2", runtime: Mix.env() == :dev},
      {:gettext, "~> 0.18"},
      {:httpoison, "~> 1.8"},
      {:poison, "~> 5.0"},
      {:mockery, "~> 2.3.0", runtime: false},
      {:ex_doc, "~> 0.24.0", only: :dev, runtime: false}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get"],
      test: ["test"],
      "assets.deploy": ["esbuild default --minify", "phx.digest"]
    ]
  end
end
