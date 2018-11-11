class CreateMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mobiles do |t|
      t.string :title
      t.string :model
      t.string :color
      t.integer :price
      t.string :discription

      t.timestamps
    end
  end
end
