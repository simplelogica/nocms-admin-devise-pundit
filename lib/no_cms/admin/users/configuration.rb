module NoCms::Admin::Users
  include ActiveSupport::Configurable

    config_accessor :devise_modules

    self.devise_modules = [:database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable]

end
