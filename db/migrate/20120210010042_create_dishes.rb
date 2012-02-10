class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.integer :position
      t.text :description
      t.integer :member_price
      t.integer :regular_price
      t.references :category

      t.timestamps
    end
    add_index :dishes, :category_id
  end
end
