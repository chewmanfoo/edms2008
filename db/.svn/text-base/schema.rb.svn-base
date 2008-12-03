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

ActiveRecord::Schema.define(:version => 20081117151808) do

  create_table "addresses", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcement_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcements", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "announcement_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auditors", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audits", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backups", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.text     "note"
    t.string   "type"
    t.datetime "executed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ballots", :force => true do |t|
    t.string   "name"
    t.integer  "election_id"
    t.integer  "executive_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ballots_candidates", :id => false, :force => true do |t|
    t.integer  "ballot_id"
    t.integer  "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ballots_issues", :id => false, :force => true do |t|
    t.integer  "ballot_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "photo_url"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "election_decision_criterias", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.float    "custom_percent"
    t.boolean  "majority"
    t.boolean  "plurality"
    t.boolean  "super_majority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elections", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start"
    t.datetime "end"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ballot_id"
    t.integer  "group_id"
  end

  create_table "executives", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "group_code"
    t.integer  "role_id"
  end

  create_table "inspections", :force => true do |t|
    t.string   "name"
    t.boolean  "private"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.string   "query"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "log_entries", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logagents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.integer  "voter_id"
    t.integer  "moderator_id"
    t.boolean  "created_by_moderator"
    t.text     "body"
    t.integer  "num_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prefs", :force => true do |t|
    t.integer  "user_id"
    t.string   "preference_name"
    t.integer  "preference_selection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reporters", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "reports", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "election_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"
  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"

  create_table "sysadmins", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "voter_id"
    t.integer  "moderator_id"
    t.boolean  "created_by_moderator"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "group_code"
    t.integer  "group_id"
    t.integer  "address_id"
  end

  create_table "voters", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "votes", :force => true do |t|
    t.integer  "ballot_id"
    t.integer  "selection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
