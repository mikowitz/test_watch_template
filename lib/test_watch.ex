defmodule TestWatchTemplate do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name:       :test_watch_template,
    short_desc: "Template for a new mix project with mix_test_watch, credo, and stream_data installed and configured",
    source_dir: "../template"


end
