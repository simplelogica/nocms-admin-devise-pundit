class NoCms::Admin::Users::DeviseController < NoCms::Admin::Users::ApplicationController

  layout 'no_cms/admin/users/devise'
  prepend_view_path 'no_cms/admin/users/devise'

  def after_sign_out_path_for role
    no_cms_admin.root_path
  end
end
