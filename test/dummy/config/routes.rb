Rails.application.routes.draw do

  mount NoCms::Admin::Engine => "/admin"
  mount NoCms::Admin::Users::Engine => "/admin"
end
