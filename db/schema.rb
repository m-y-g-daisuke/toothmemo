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

ActiveRecord::Schema.define(version: 2020_03_13_050401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "name", null: false
    t.date "birth"
    t.string "sex"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.bigint "breed_id"
    t.index ["breed_id"], name: "index_animals_on_breed_id"
    t.index ["user_id"], name: "index_animals_on_user_id"
  end

  create_table "breeds", force: :cascade do |t|
    t.string "family", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "recorded_at", null: false
    t.text "content_g"
    t.text "image"
    t.text "movie"
    t.bigint "animal_id", null: false
    t.bigint "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "memo"
    t.text "content_b"
    t.bigint "tag_word_id"
    t.index ["animal_id"], name: "index_posts_on_animal_id"
    t.index ["tag_word_id"], name: "index_posts_on_tag_word_id"
    t.index ["tool_id"], name: "index_posts_on_tool_id"
  end

  create_table "posts_tag_words", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "tag_word_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_posts_tag_words_on_post_id"
    t.index ["tag_word_id"], name: "index_posts_tag_words_on_tag_word_id"
  end

  create_table "posts_tools", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "tool_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_posts_tools_on_post_id"
    t.index ["tool_id"], name: "index_posts_tools_on_tool_id"
  end

  create_table "tag_words", force: :cascade do |t|
    t.string "word", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "care", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "breeds"
  add_foreign_key "animals", "users"
  add_foreign_key "posts", "animals"
  add_foreign_key "posts", "tag_words"
  add_foreign_key "posts", "tools"
  add_foreign_key "posts_tag_words", "posts"
  add_foreign_key "posts_tag_words", "tag_words"
  add_foreign_key "posts_tools", "posts"
  add_foreign_key "posts_tools", "tools"
end
