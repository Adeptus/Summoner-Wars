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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131023213835) do

  create_table "deck_cards", force: true do |t|
    t.integer  "deck_id"
    t.string   "card_type"
    t.integer  "card_id"
    t.string   "status"
    t.integer  "position_x"
    t.integer  "position_y"
    t.integer  "current_life"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_id"
    t.integer  "player_id"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.integer  "skill_id"
    t.string   "rase_type"
    t.integer  "count_in_deck"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "current_deck_id"
    t.datetime "finished_at"
    t.datetime "started_at"
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phase",           default: 0
    t.integer  "turn",            default: 0
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.integer  "life"
    t.integer  "power"
    t.integer  "summon_cost"
    t.string   "unit_type"
    t.string   "wepon_type"
    t.integer  "skill_id"
    t.string   "rase_type"
    t.integer  "count_in_deck"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "walls", force: true do |t|
    t.string   "name"
    t.integer  "life"
    t.string   "rase_type"
    t.integer  "count_in_deck"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
