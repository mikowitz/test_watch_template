use Mix.Config

#     config(:<%= @project_name %>, key: :value)
#
# And access this configuration in your application as:
#
#     Application.get_env(:<%= @project_name %>, :key)
#
# Or configure a 3rd-party app:
#
#     config(:logger, level: :info)
#

# mix_test_watch
if Mix.env == :dev do
  config :mix_test_watch,
    clear: true,
    tasks: [
      "test",
      "credo"
    ]
end

# Example per-environment config:
#
#     import_config("#{Mix.env}.exs")
