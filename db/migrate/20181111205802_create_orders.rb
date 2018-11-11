class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.integer :amount_paid
      t.string :amount_balance
      t.string :discription
      t.references :accessories, foreign_key: true
      t.references :mobile, foreign_key: true

      t.timestamps
    end
  end
end
