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

ActiveRecord::Schema.define(:version => 20130801221750) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.integer  "supplier_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "identifier"
  end

  add_index "accounts", ["supplier_id"], :name => "index_accounts_on_supplier_id"

  create_table "budgets", :force => true do |t|
    t.float    "total_value"
    t.integer  "time_to_conclude"
    t.integer  "competence_center_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "supplier_id"
    t.float    "balance"
  end

  add_index "budgets", ["competence_center_id"], :name => "index_budgets_on_competence_center_id"

  create_table "competence_centers", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "competence_centers", ["user_id"], :name => "index_competence_centers_on_user_id"

  create_table "manager_accounts", :force => true do |t|
    t.string   "name"
    t.integer  "identifier"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notifications", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payments", :force => true do |t|
    t.float    "value"
    t.date     "pay_day"
    t.integer  "budget_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "payments", ["budget_id"], :name => "index_payments_on_budget_id"

  create_table "recurrencies", :force => true do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supplier_contracts", :force => true do |t|
    t.date     "initial_date"
    t.text     "description"
    t.text     "observation"
    t.integer  "supplier_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "agence"
    t.string   "account_number"
  end

  add_index "supplier_contracts", ["supplier_id"], :name => "index_supplier_contracts_on_supplier_id"

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.boolean  "contract"
    t.string   "contact_name"
    t.string   "contact_telephone"
    t.string   "contact_email"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "cpf"
    t.integer  "cnpj"
    t.string   "type_supplier"
  end

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
