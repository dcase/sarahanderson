# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090216202004) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.boolean  "is_visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_home"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", :force => true do |t|
    t.string   "title"
    t.string   "client_name"
    t.integer  "position"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rollover_states", :force => true do |t|
    t.string   "state_file_name"
    t.string   "state_content_type"
    t.integer  "state_file_size"
    t.datetime "state_updated_at"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rollovers", :force => true do |t|
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "active_file_name"
    t.string   "active_content_type"
    t.integer  "active_file_size"
    t.datetime "active_updated_at"
    t.string   "inactive_file_name"
    t.string   "inactive_content_type"
    t.integer  "inactive_file_size"
    t.datetime "inactive_updated_at"
    t.string   "over_file_name"
    t.string   "over_content_type"
    t.integer  "over_file_size"
    t.datetime "over_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
