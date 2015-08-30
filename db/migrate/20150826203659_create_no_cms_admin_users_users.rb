class CreateNoCmsAdminUsersUsers < ActiveRecord::Migration
  def change
    create_table :no_cms_admin_users_users do |t|
      t.string :email,              null: false, default: ""
      t.timestamps null: false
    end
  end
end
