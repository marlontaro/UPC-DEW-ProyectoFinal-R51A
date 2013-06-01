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

ActiveRecord::Schema.define(:version => 20130601142138) do

  create_table "assitances", :force => true do |t|
    t.integer  "concert_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assitances", ["concert_id"], :name => "index_assitances_on_concert_id"
  add_index "assitances", ["user_id"], :name => "index_assitances_on_user_id"

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.date     "date"
    t.integer  "score"
    t.integer  "concert_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["concert_id"], :name => "index_comments_on_concert_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "concerts", :force => true do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "state"
    t.integer  "user_id"
    t.integer  "place_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "concerts", ["group_id"], :name => "index_concerts_on_group_id"
  add_index "concerts", ["place_id"], :name => "index_concerts_on_place_id"
  add_index "concerts", ["user_id"], :name => "index_concerts_on_user_id"

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "style_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["style_id"], :name => "index_groups_on_style_id"

  create_table "members", :force => true do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "members", ["group_id"], :name => "index_members_on_group_id"
  add_index "members", ["user_id"], :name => "index_members_on_user_id"

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "image"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "sex"
    t.integer  "document_type"
    t.string   "document_number"
    t.string   "email"
    t.string   "foursquare_token"
    t.string   "password"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_type"
  end

end
