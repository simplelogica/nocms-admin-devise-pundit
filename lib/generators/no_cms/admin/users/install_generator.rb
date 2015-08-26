module NoCms::Admin::Users
  class InstallGenerator < Rails::Generators::Base

    def install_devise
      generate 'devise:install'
    end

  end
end
