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

ActiveRecord::Schema.define(version: 20150129200138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["category_name"], name: "index_categories_on_category_name", using: :btree
  add_index "categories", ["recipe_id"], name: "index_categories_on_recipe_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "ingredient_name"
    t.integer  "ingredient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients", ["ingredient_id"], name: "index_ingredients_on_ingredient_id", using: :btree
  add_index "ingredients", ["ingredient_name"], name: "index_ingredients_on_ingredient_name", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "recipe_name"
    t.string   "instructions"
    t.integer  "category_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipes", ["category_id"], name: "index_recipes_on_category_id", using: :btree
  add_index "recipes", ["rating"], name: "index_recipes_on_rating", using: :btree
  add_index "recipes", ["recipe_name"], name: "index_recipes_on_recipe_name", using: :btree

end
