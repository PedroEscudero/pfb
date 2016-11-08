class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :reason
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
