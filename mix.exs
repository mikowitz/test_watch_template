defmodule TestWatchTemplate.Mixfile do
  use Mix.Project

  @name    :test_watch_template
  @version "0.3.0"

  @deps [
    { :mix_templates,  ">0.0.0",  app: false },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Michael Berkowitz <michael.berkowitz@gmail.com>"]
  @github      "https://github.com/mikowitz/test_watch_template"

  @description """
  Provides a mix project template with mix_test_watch, credo, and stream_data
  installed and configured.
  """

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      deps:    @deps,
      elixir:  "~> 1.4",
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses:    ["MIT"],
      links:       %{
        "GitHub" => @github,
      }
    ]
  end
end
