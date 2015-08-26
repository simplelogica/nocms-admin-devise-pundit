Rails.application.routes.draw do

  mount NoCms::Admin::Users::Engine => "/users"
end
