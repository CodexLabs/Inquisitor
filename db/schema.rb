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

ActiveRecord::Schema.define(:version => 20101211193459) do

  create_table "attempts", :force => true do |t|
    t.integer  "quiz_id"
    t.integer  "student_id"
    t.float    "percent_correct"
    t.text     "wrong_answers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attempts", ["quiz_id"], :name => "index_attempts_on_quiz_id"
  add_index "attempts", ["student_id"], :name => "index_attempts_on_student_id"

  create_table "questions", :force => true do |t|
    t.string   "prompt"
    t.string   "correct_answer"
    t.string   "distractor_1"
    t.string   "distractor_2"
    t.string   "distractor_3"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["quiz_id"], :name => "index_questions_on_quiz_id"

  create_table "quizzes", :force => true do |t|
    t.string   "name"
    t.integer  "pass_percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "organization_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
