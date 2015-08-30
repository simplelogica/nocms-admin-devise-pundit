# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|

  # ==> ORM configuration
  # Load and configure the ORM. Supports :active_record (default) and
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'

  # The router that invoked `devise_for`, in the example above, would be:
  config.router_name = :no_cms_admin_users

  config.parent_controller = 'NoCms::Admin::Users::DeviseController'
end
