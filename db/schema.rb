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

ActiveRecord::Schema[7.0].define(version: 2023_10_20_061233) do
  create_table "japan_and_overseas_test_categories", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_choices", force: :cascade do |t|
    t.integer "quiz_id", null: false
    t.text "content", null: false
    t.boolean "correct_answer", default: false, null: false
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.index ["quiz_id"], name: "index_quiz_choices_on_quiz_id"
  end

  create_table "quiz_results", force: :cascade do |t|
    t.integer "japan_and_overseas_test_category_id", null: false
    t.integer "user_id", null: false
    t.integer "score", null: false
    t.boolean "result", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["japan_and_overseas_test_category_id"], name: "index_quiz_results_on_japan_and_overseas_test_category_id"
    t.index ["user_id"], name: "index_quiz_results_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer "japan_and_overseas_test_category_id", null: false
    t.text "content", null: false
    t.string "youtube_url"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["japan_and_overseas_test_category_id"], name: "index_quizzes_on_japan_and_overseas_test_category_id"
  end

  create_table "user_quiz_answers", force: :cascade do |t|
    t.integer "quiz_id", null: false
    t.integer "quiz_choice_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_choice_id"], name: "index_user_quiz_answers_on_quiz_choice_id"
    t.index ["quiz_id"], name: "index_user_quiz_answers_on_quiz_id"
    t.index ["user_id"], name: "index_user_quiz_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "quiz_choices", "quizzes"
  add_foreign_key "quiz_results", "japan_and_overseas_test_categories"
  add_foreign_key "quiz_results", "users"
  add_foreign_key "quizzes", "japan_and_overseas_test_categories"
  add_foreign_key "user_quiz_answers", "quiz_choices"
  add_foreign_key "user_quiz_answers", "quizzes"
  add_foreign_key "user_quiz_answers", "users"
end
