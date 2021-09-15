# frozen_string_literal: true

StimulusReflex.configure do |config|
  # Enable/disable exiting / warning when the sanity checks fail options:
  # `:exit` or `:warn` or `:ignore`

  # config.on_failed_sanity_checks = :exit

  # Override the parent class that the StimulusReflex ActionCable channel inherits from

  # config.parent_channel = "ApplicationCable::Channel"

  # config.logging = proc { "[#{session_id}] #{operation_counter.magenta} #{reflex_info.green} -> #{selector.cyan} via #{mode} Morph (#{operation.yellow})" }

  # config.middleware.use FirstRackMiddleware
  # config.middleware.use SecondRackMiddleware
end
