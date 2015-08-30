class NoCms::Admin::Users::DeviseController < NoCms::Admin::Users::ApplicationController

  layout 'no_cms/admin/users/devise'
  prepend_view_path 'no_cms/admin/users/devise'

end
