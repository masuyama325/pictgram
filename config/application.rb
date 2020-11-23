require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pictgram
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # config / environment / *の設定は、ここで指定された設定よりも優先されます。
    # アプリケーション構成はconfig / initializersのファイルに入ることができます
    # -ディレクトリ内のすべての.rbファイルは、アプリケーションにフレームワークと
    # gemをロードした後に自動的にロードされます
    
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
  end
end
