class CreateIngredients < ActiveRecord::Migration
  def up
    create_table :ingredients do |t|
      t.string :name
    end
  end

  def down
    drop_table :ingredients
  end
end
