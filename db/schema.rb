# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_18_181358) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "faqs", force: :cascade do |t|
    t.integer "user_id"
    t.string "question"
    t.string "game_title"
    t.integer "genre_id"
    t.integer "system_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_posts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_favorite_posts_on_post_id"
    t.index ["user_id"], name: "index_favorite_posts_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "game_title"
    t.integer "genre_id"
    t.integer "system_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url_one"
    t.string "image_url_two"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.string "game_title"
    t.string "subtitle"
    t.integer "genre_id"
    t.string "systems"
    t.text "body"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_genres", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.boolean "admin"
    t.string "prof_image"
    t.text "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorite_posts", "posts"
  add_foreign_key "favorite_posts", "users"
end
