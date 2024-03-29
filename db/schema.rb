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

ActiveRecord::Schema.define(:version => 20120418202907) do

  create_table "client", :force => true do |t|
    t.string "name"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.string "name"
  end

  create_table "ingredients_suppliers", :id => false, :force => true do |t|
    t.integer "supplier_id"
    t.integer "ingredient_id"
  end

  create_table "products", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.integer "recipe_id"
  end

  create_table "recipe_items", :force => true do |t|
    t.float   "quantity"
    t.integer "storable_id"
    t.string  "storable_type"
    t.integer "quantity_type_id"
  end

  create_table "recipe_steps", :force => true do |t|
    t.text    "content"
    t.integer "recipe_id"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stock_items", :force => true do |t|
    t.integer "stock_id"
    t.float   "quantity"
    t.integer "storable_id"
    t.string  "storable_type"
    t.integer "quantity_type_id"
  end

  create_table "stocks", :force => true do |t|
    t.string "name"
  end

  create_table "suppliers", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "role_id"
    t.string   "role_type"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
