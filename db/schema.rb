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

ActiveRecord::Schema.define(version: 2018_07_15_182755) do

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tweeet_id"
    t.index ["tweeet_id"], name: "index_likes_on_tweeet_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

# Could not dump table "tweeets" because of following StandardError
#   Unknown type 'likes' for column 'references'

# Could not dump table "users" because of following StandardError
#   Unknown type 'likes' for column 'references'

end
