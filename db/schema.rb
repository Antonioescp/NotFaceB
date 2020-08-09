# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_08_231155) do

  create_table "amigos", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "amistad_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["amistad_id"], name: "index_amigos_on_amistad_id"
    t.index ["usuario_id"], name: "index_amigos_on_usuario_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "contenido"
    t.integer "usuario_id", null: false
    t.integer "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_comentarios_on_post_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "contenido"
    t.integer "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_posts_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "correo"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "amigos", "usuarios"
  add_foreign_key "amigos", "usuarios", column: "amistad_id"
  add_foreign_key "comentarios", "posts"
  add_foreign_key "comentarios", "usuarios"
  add_foreign_key "posts", "usuarios"
end
