require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module BookReviewSite
  class Application < Rails::Application
    config.load_defaults 7.0
    
    # Ensure lib/custom is autoloaded
    config.autoload_paths << Rails.root.join('lib')
  end
end
