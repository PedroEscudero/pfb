class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.boolean :blocked, default: false
      t.boolean :likes_us, default: false
      t.string :email
      t.integer :coins, default: 4000
      t.integer :level, default: 1
      t.timestamps
    end

    add_index "users", ["blocked"], name: "index_users_on_blocked", using: :btree
    add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
    add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree
  end
end

