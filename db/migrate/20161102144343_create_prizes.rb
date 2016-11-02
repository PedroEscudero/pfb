class CreatePrizes < ActiveRecord::Migration[5.0]
  def change
    create_table :prizes do |t|
      t.string :name
      t.integer :coins

      t.timestamps
    end
  end
end
