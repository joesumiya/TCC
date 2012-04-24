class CreateRecipeSteps < ActiveRecord::Migration
  def up
    create_table :recipe_steps do |t|
      t.text :content
      t.references :recipe
    end
  end

  def down
    drop_table :recipe_steps
  end
end
