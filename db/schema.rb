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

ActiveRecord::Schema.define(version: 2019_11_06_144504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "arrival_mails", force: :cascade do |t|
    t.bigint "register_id"
    t.string "internal_reference"
    t.string "external_reference"
    t.datetime "departure_date"
    t.datetime "receipt_date"
    t.string "linked_to_mail"
    t.string "reference_linked_mail"
    t.string "to_answer"
    t.datetime "response_limit_time"
    t.datetime "response_date"
    t.bigint "support_id"
    t.bigint "nature_id"
    t.bigint "correspondent_id"
    t.string "object"
    t.text "description"
    t.string "reserved_suite"
    t.bigint "binder_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["binder_id"], name: "index_arrival_mails_on_binder_id"
    t.index ["correspondent_id"], name: "index_arrival_mails_on_correspondent_id"
    t.index ["nature_id"], name: "index_arrival_mails_on_nature_id"
    t.index ["register_id"], name: "index_arrival_mails_on_register_id"
    t.index ["support_id"], name: "index_arrival_mails_on_support_id"
    t.index ["user_id"], name: "index_arrival_mails_on_user_id"
  end

  create_table "binders", force: :cascade do |t|
    t.bigint "folder_id"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_binders_on_folder_id"
    t.index ["user_id"], name: "index_binders_on_user_id"
  end

  create_table "correspondent_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_correspondent_types_on_user_id"
  end

  create_table "correspondents", force: :cascade do |t|
    t.bigint "correspondent_type_id"
    t.string "organization_name"
    t.string "first_name"
    t.string "last_name"
    t.string "civility"
    t.string "address"
    t.string "phone"
    t.string "city"
    t.string "country"
    t.string "zip_code"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["correspondent_type_id"], name: "index_correspondents_on_correspondent_type_id"
    t.index ["user_id"], name: "index_correspondents_on_user_id"
  end

  create_table "departure_mails", force: :cascade do |t|
    t.bigint "register_id"
    t.string "internal_reference"
    t.datetime "departure_date"
    t.string "linked_to_mail"
    t.string "reference_linked_mail"
    t.string "to_answer"
    t.datetime "response_limit_time"
    t.datetime "response_date"
    t.bigint "support_id"
    t.bigint "nature_id"
    t.bigint "correspondent_id"
    t.string "object"
    t.text "description"
    t.bigint "binder_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["binder_id"], name: "index_departure_mails_on_binder_id"
    t.index ["correspondent_id"], name: "index_departure_mails_on_correspondent_id"
    t.index ["nature_id"], name: "index_departure_mails_on_nature_id"
    t.index ["register_id"], name: "index_departure_mails_on_register_id"
    t.index ["support_id"], name: "index_departure_mails_on_support_id"
    t.index ["user_id"], name: "index_departure_mails_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.bigint "role_id"
    t.bigint "permission_id"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_features_on_permission_id"
    t.index ["role_id"], name: "index_features_on_role_id"
    t.index ["user_id"], name: "index_features_on_user_id"
  end

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_folders_on_user_id"
  end

  create_table "imputation_items", force: :cascade do |t|
    t.bigint "imputation_id"
    t.bigint "imputation_reason_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imputation_id"], name: "index_imputation_items_on_imputation_id"
    t.index ["imputation_reason_id"], name: "index_imputation_items_on_imputation_reason_id"
  end

  create_table "imputation_reasons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_imputation_reasons_on_user_id"
  end

  create_table "imputations", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "recipient_id"
    t.bigint "arrival_mail_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arrival_mail_id"], name: "index_imputations_on_arrival_mail_id"
    t.index ["recipient_id"], name: "index_imputations_on_recipient_id"
    t.index ["service_id"], name: "index_imputations_on_service_id"
    t.index ["user_id"], name: "index_imputations_on_user_id"
  end

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_natures_on_user_id"
  end

  create_table "organization_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_organization_types_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.bigint "organization_type_id"
    t.string "slogan"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "phone"
    t.string "fax"
    t.string "zip_code"
    t.string "web_site"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_type_id"], name: "index_organizations_on_organization_type_id"
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "permission_roles", force: :cascade do |t|
    t.bigint "permission_id"
    t.bigint "role_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_roles_on_permission_id"
    t.index ["role_id"], name: "index_permission_roles_on_role_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "civility"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone"
    t.text "description"
    t.string "status"
    t.bigint "service_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_profiles_on_service_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "register_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_register_types_on_user_id"
  end

  create_table "registers", force: :cascade do |t|
    t.bigint "register_type_id"
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "reference"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["register_type_id"], name: "index_registers_on_register_type_id"
    t.index ["user_id"], name: "index_registers_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "parent_service"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "supports", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_supports_on_user_id"
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_task_statuses_on_user_id"
  end

  create_table "task_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_task_types_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "task_type_id"
    t.string "title"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "closing_date"
    t.bigint "task_status_id"
    t.bigint "imputation_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imputation_id"], name: "index_tasks_on_imputation_id"
    t.index ["task_status_id"], name: "index_tasks_on_task_status_id"
    t.index ["task_type_id"], name: "index_tasks_on_task_type_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "slug"
    t.bigint "role_id", null: false
    t.integer "created_by"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "arrival_mails", "binders"
  add_foreign_key "arrival_mails", "correspondents"
  add_foreign_key "arrival_mails", "natures"
  add_foreign_key "arrival_mails", "registers"
  add_foreign_key "arrival_mails", "supports"
  add_foreign_key "arrival_mails", "users"
  add_foreign_key "binders", "folders"
  add_foreign_key "binders", "users"
  add_foreign_key "correspondent_types", "users"
  add_foreign_key "correspondents", "correspondent_types"
  add_foreign_key "correspondents", "users"
  add_foreign_key "departure_mails", "binders"
  add_foreign_key "departure_mails", "correspondents"
  add_foreign_key "departure_mails", "natures"
  add_foreign_key "departure_mails", "registers"
  add_foreign_key "departure_mails", "supports"
  add_foreign_key "departure_mails", "users"
  add_foreign_key "features", "permissions"
  add_foreign_key "features", "roles"
  add_foreign_key "features", "users"
  add_foreign_key "folders", "users"
  add_foreign_key "imputation_items", "imputation_reasons"
  add_foreign_key "imputation_items", "imputations"
  add_foreign_key "imputation_reasons", "users"
  add_foreign_key "imputations", "arrival_mails"
  add_foreign_key "imputations", "services"
  add_foreign_key "imputations", "users"
  add_foreign_key "natures", "users"
  add_foreign_key "organization_types", "users"
  add_foreign_key "organizations", "organization_types"
  add_foreign_key "organizations", "users"
  add_foreign_key "permission_roles", "permissions"
  add_foreign_key "permission_roles", "roles"
  add_foreign_key "profiles", "services"
  add_foreign_key "profiles", "users"
  add_foreign_key "register_types", "users"
  add_foreign_key "registers", "register_types"
  add_foreign_key "registers", "users"
  add_foreign_key "services", "users"
  add_foreign_key "supports", "users"
  add_foreign_key "task_statuses", "users"
  add_foreign_key "task_types", "users"
  add_foreign_key "tasks", "imputations"
  add_foreign_key "tasks", "task_statuses"
  add_foreign_key "tasks", "task_types"
  add_foreign_key "tasks", "users"
  add_foreign_key "users", "roles"
end
