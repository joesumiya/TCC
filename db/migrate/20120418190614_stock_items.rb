class StockItems < ActiveRecord::Migration
  def up
    create_table :stock_items do |t|
      t.references :stock
      t.float :quantity
      t.references :storable, polymorphic: true
      t.integer :quantity_type_id
    end
  end

  def down
    drop_table :stock_items
  end
end
