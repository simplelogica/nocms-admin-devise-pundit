module NoCms::Admin::Users
  class InstallGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates/", __FILE__)

    def install_devise
      generate 'devise:install'
    end


    def generate_initializer
      template "config/initializers/no_cms/admin/users.rb"
    end

  end
end
