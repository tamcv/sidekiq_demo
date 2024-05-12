class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.text :description
      t.string :transaction_type
      t.decimal :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
