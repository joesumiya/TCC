class CreateIngredientSupplier < ActiveRecord::Migration
  def up 
    create_table :ingredients_suppliers, :id => false  do |t|
      t.references :supplier
      t.references :ingredient
    end
  end

  def down
    drop_table :ingredients_suppliers
  end
end
