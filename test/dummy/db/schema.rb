# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150830141248) do

  create_table "no_cms_admin_users_roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "no_cms_admin_users_roles", ["name", "resource_type", "resource_id"], name: "index_no_cms_admin_users_roles_on_name_and_resource"
  add_index "no_cms_admin_users_roles", ["name"], name: "index_no_cms_admin_users_roles_on_name"

  create_table "no_cms_admin_users_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "no_cms_admin_users_users", ["email"], name: "index_no_cms_admin_users_users_on_email", unique: true
  add_index "no_cms_admin_users_users", ["reset_password_token"], name: "index_no_cms_admin_users_users_on_reset_password_token", unique: true

  create_table "no_cms_admin_users_users_no_cms_admin_users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "no_cms_admin_users_users_no_cms_admin_users_roles", ["user_id", "role_id"], name: "index_no_cms_admin_users_users_roles_on_user_id_and_role_id"

end
