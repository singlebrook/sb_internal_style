require "sb_internal_style/version"

module SbInternalStyle
  class Engine < ::Rails::Engine
    config.after_initialize do
      # Configure hosting application to precompile font files
      Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf )
    end
  end
end
