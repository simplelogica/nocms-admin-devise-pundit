class RolifyCreateNoCmsNoCmsAdminUsersRoles < ActiveRecord::Migration
  def change
    create_table(:no_cms_admin_users_roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:no_cms_admin_users_users_no_cms_admin_users_roles, :id => false) do |t|
      t.references :user
      t.references :role
    end

    add_index(:no_cms_admin_users_roles, :name)
    add_index(:no_cms_admin_users_roles, [ :name, :resource_type, :resource_id ], name: 'index_no_cms_admin_users_roles_on_name_and_resource')
    add_index(:no_cms_admin_users_users_no_cms_admin_users_roles, [ :user_id, :role_id ], name: 'index_no_cms_admin_users_users_roles_on_user_id_and_role_id')
  end
end
