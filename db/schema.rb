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

ActiveRecord::Schema.define(version: 2021_04_29_220931) do

  create_table "active_storage_attachments", id: false, force: :cascade do |t|
    t.text "id"
    t.text "name"
    t.text "record_type"
    t.text "record_id"
    t.text "blob_id"
    t.text "created_at"
  end

  create_table "active_storage_blobs", id: false, force: :cascade do |t|
    t.text "id"
    t.text "key"
    t.text "filename"
    t.text "content_type"
    t.text "metadata"
    t.text "byte_size"
    t.text "checksum"
    t.text "created_at"
    t.string "service_name", null: false
  end

end
