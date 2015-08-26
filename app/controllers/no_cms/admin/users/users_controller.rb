require_dependency "no_cms/admin/users/application_controller"

module NoCms::Admin::Users
  class UsersController < ApplicationController

    before_filter :load_menu_section
    before_filter :load_user, only: [:edit, :update, :destroy]
    before_filter :load_sidebar, only: [:index, :new, :edit]


    def new
      @user = NoCms::Admin::Users::User.new
    end

    def create
      @user = NoCms::Admin::Users::User.new user_params
      if @user.save
        @nocms_logger.info(I18n.t('.no_cms.admin.users.users.create.success', title: @user.email), true)
        redirect_to edit_user_path(@user)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.users.users.create.error', title: @user.email))
        load_sidebar
        render :new
      end
    end

    def edit
      @nocms_logger.add_message :users, I18n.t('.no_cms.admin.users.users.edit.log_messages', title: @user.email)
    end

    def update
      if @user.update_attributes user_params
        @nocms_logger.info(I18n.t('.no_cms.admin.users.users.update.success', title: @user.email), true)
        redirect_to edit_user_path(@user)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.users.users.update.error', title: @user.email))
        load_sidebar
        render :edit
      end
    end

    def destroy
      if @user.destroy
        @nocms_logger.info(I18n.t('.no_cms.admin.users.users.destroy.success', title: @user.email), true)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.users.users.destroy.error', title: @user.email), true)
      end
      redirect_to users_path
    end

    private

    def load_menu_section
      @current_section = 'users'
    end

    def load_user
      @user = NoCms::Admin::Users::User.find(params[:id])
    end

    def load_sidebar
      @users = NoCms::Admin::Users::User.all
    end

    def user_params
      user_params = params.require(:user).permit(:email)
    end

  end
end
