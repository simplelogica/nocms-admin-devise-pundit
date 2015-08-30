module NoCms::Admin::Users
  class User < ActiveRecord::Base
    devise *NoCms::Admin::Users.devise_modules
  end
end
