NoCms::Admin::ApplicationController.class_eval do
  include Pundit
  prepend_before_action :authenticate_user! if NoCms::Admin::Users.authentication_enabled
  prepend_before_action :authorize_section! if NoCms::Admin::Users.authentication_enabled

  def authorize_section!
    authorize :'no_cms/admin/menu', "#{load_menu_section}?" unless current_user.blank? || !respond_to?(:load_menu_section) || load_menu_section.blank?
  end

end
