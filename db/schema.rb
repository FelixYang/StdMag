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

ActiveRecord::Schema.define(:version => 20121008063635) do

  create_table "std_infos", :force => true do |t|
    t.string   "std_id"
    t.string   "std_release_time"
    t.string   "std_org"
    t.text     "std_name_cn"
    t.text     "std_name_en"
    t.string   "std_language"
    t.string   "std_tag1"
    t.string   "std_tag2"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "std_paths", :force => true do |t|
    t.string   "std_id"
    t.string   "std_path"
    t.integer  "std_info_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "std_paths", ["std_info_id"], :name => "index_std_paths_on_std_info_id"

end
