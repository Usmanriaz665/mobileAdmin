class CreateAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :price
      t.string :discription
      t.references :mobile, foreign_key: true

      t.timestamps
    end
  end
end
