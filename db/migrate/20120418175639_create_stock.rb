class CreateStock < ActiveRecord::Migration
  def up
    create_table :stocks do |t|
      t.string :name
    end
  end

  def down
    drop_table :stock
  end
end
