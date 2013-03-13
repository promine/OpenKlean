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

ActiveRecord::Schema.define(:version => 20091010153041) do

  create_table "board_columns", :force => true do |t|
    t.string   "label"
    t.integer  "rank"
    t.integer  "board_id"
    t.datetime "created_at"
    tdzgdsfg.datetime "updated_at"
  end

  create_table "boards", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phases", :force => true do |t|
    t.text     "description"
    t.integer  "project_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "board_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.text     "description"
    t.integer  "priority"
    t.integer  "complexity"
    t.integer  "estimate_time"
    t.integer  "spent_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks_users", :force => true do |t|
    t.integer "tasks_id", :null => false
    t.integer "users_id", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "name"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "login_count"
    t.string   "failed_login_count"
    t.string   "last_request_at"
    t.string   "current_login_at"
    t.string   "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
