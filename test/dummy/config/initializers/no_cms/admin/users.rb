NoCms::Admin::Users.configure do |config|

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :registerable, :timeoutable and :omniauthable
  config.devise_modules = [:database_authenticatable, :recoverable, :rememberable, :trackable, :validatable]

  # While you are in development you may consider to remove
  # authentication just in order to work more comfortably
  # config.authentication_enabled = true
end
