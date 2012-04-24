class CreateClient < ActiveRecord::Migration
  def up
    create_table :client do |t|
    t.string :name
    end
  end

  def down
    drop_table :name
  end
end
