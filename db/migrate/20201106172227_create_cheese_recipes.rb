class CreateCheeseRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :cheese_recipes do |t|
      t.text :recipe
      t.integer :cheese_id

      t.timestamps
    end
  end
end
