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

ActiveRecord::Schema.define(:version => 20130319035108) do

  create_table "group_permissions", :id => false, :force => true do |t|
    t.string   "group_type", :null => false
    t.string   "action",     :null => false
    t.string   "action_ind", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "group_permissions", ["group_type", "action"], :name => "index_group_permissions_on_group_type_and_action", :unique => true

  create_table "group_vals", :id => false, :force => true do |t|
    t.string   "group_type",        :null => false
    t.string   "group_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "group_vals", ["group_type"], :name => "index_group_vals_on_group_type", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title",         :null => false
    t.string   "post_type",     :null => false
    t.string   "detail",        :null => false
    t.date     "post_date",     :null => false
    t.string   "restricted"
    t.date     "event_date"
    t.date     "deadline_date"
    t.date     "exp_date"
    t.string   "deleted"
    t.integer  "user_post_id",  :null => false
    t.integer  "user_id",       :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "user_groups", :id => false, :force => true do |t|
    t.string   "uid",        :null => false
    t.string   "group",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_groups", ["uid", "group"], :name => "index_user_groups_on_uid_and_group", :unique => true

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",         :null => false
    t.string   "password"
    t.date     "pass_exp_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
