require "sb_internal_style/version"

module SbInternalStyle
  class Engine < ::Rails::Engine
    config.after_initialize do
      # Configure hosting application to precompile font files
      font_path = File.expand_path('../../vendor/assets/fonts', __FILE__)
      Rails.application.config.assets.precompile += [
        font_path + "/singlebrook_icons.eot",
        font_path + "/singlebrook_icons.svg",
        font_path + "/singlebrook_icons.ttf",
        font_path + "/singlebrook_icons.woff",
      ]
    end
  end
end
