require 'nocms-admin'
require 'devise'

module NoCms::Admin::Users
  class Engine < ::Rails::Engine
    isolate_namespace NoCms::Admin::Users

    config.to_prepare do

      Dir.glob(NoCms::Admin::Users::Engine.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end

    end

  end
end
