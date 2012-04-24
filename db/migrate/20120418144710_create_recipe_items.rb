class CreateRecipeItems < ActiveRecord::Migration
  def up
    create_table :recipe_items do |t|
      t.float :quantity
      t.references :storable, polymorphic: true
      t.integer :quantity_type_id
    end
  end

  def down
    drop_table :recipe_items
  end
end
