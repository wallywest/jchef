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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130108215734) do

  create_table "apps", :force => true do |t|
    t.text "name"
    t.text "repo"
  end

  create_table "apps_users", :id => false, :force => true do |t|
    t.integer "app_id"
    t.integer "user_id"
  end

  create_table "builds", :force => true do |t|
    t.string   "version"
    t.integer  "app_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "migrations", :force => true do |t|
    t.text     "name",   :null => false
    t.datetime "ran_at"
  end

  add_index "migrations", ["name"], :name => "migrations_name_index"

  create_table "users", :force => true do |t|
    t.text   "username"
    t.text   "email"
    t.string "password"
  end

  create_table "web_users", :force => true do |t|
    t.string   "login",                                   :default => ""
    t.string   "first_name",                              :default => ""
    t.string   "last_name",                               :default => ""
    t.string   "email",                                   :default => ""
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
