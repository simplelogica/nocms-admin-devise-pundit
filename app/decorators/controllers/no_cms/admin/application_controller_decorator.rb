NoCms::Admin::ApplicationController.class_eval do
  include Pundit
  before_action :authenticate_user! if NoCms::Admin::Users.authentication_enabled
end
