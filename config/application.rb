require_relative 'boot'

require 'rails/all'
require './lib/shared_utils/utils'
require './lib/outin_storage/outin_storage'
#require './lib/shared_utils/google_drive_client'
require './lib/google_drive/google_drive'
require './lib/tasks/arrival_mails/arrival_mails_delay_check'
require './lib/tasks/tasks/tasks_delay_check'
require './lib/tasks/tickets/tickets_delay_check'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Geid
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**','*.{rb,yml}').to_s]

    config.i18n.default_locale = :fr

    config.assets.paths << Rails.root.join("app", "assets", "fonts")

    #For subfolders
    config.autoload_paths += Dir[Rails.root.join('app', 'models', '**/')]
  end
end
