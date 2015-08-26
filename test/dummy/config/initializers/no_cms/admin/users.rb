NoCms::Admin::Users.configure do |config|

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  config.devise_modules = [:database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable]

end
