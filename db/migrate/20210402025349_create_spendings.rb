class CreateSpendings < ActiveRecord::Migration[6.0]
  def change
    create_table :spendings do |t|
      t.integer :spending_category_id, null:false, numericality: { other_than: 0 }
      t.integer :price, null:false ,numericality: { only_integer: true }
      t.references :user, null:false, foreign_keys: true
      t.timestamps
    end
  end
end
