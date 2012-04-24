class CreateProduct < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :recipe
    end
  end

  def down
    drop_table :products
  end
end
