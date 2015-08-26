NoCms::Admin::Users::Engine.routes.draw do
  devise_for :users, class_name: "NoCms::Admin::Users::User", module: :devise
  resources :users
end
