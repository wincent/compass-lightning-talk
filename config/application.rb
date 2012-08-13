require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Lightning
  class Application < Rails::Application
    config.assets.enabled = true
    config.assets.initialize_on_precompile = false
    config.assets.precompile += %w(home.css ie.css print.css screen.css)
    config.assets.version = '1.0'
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
  end
end
