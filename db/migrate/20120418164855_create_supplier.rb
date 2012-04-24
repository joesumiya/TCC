class CreateSupplier < ActiveRecord::Migration
  def up
    create_table :suppliers do |t|
      t.string :name
    end
  end

  def down
    drop_table :suppliers
  end
end
