module NoCms::Admin::Users
  include ActiveSupport::Configurable

    config_accessor :devise_modules
    config_accessor :authentication_enabled

    self.devise_modules = [:database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable]
    self.authentication_enabled = true

end
