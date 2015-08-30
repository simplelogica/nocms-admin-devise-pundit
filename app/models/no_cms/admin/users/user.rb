module NoCms::Admin::Users
  class User < ActiveRecord::Base
    devise *NoCms::Admin::Users.devise_modules

    rolify :role_cname => 'NoCms::Admin::Users::Role'
  end
end
