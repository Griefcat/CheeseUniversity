class CreateCheeseRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :cheese_recipes do |t|
      t.text :directions
      t.text :ingredients
      t.string :name
      t.integer :cheese_id

      t.timestamps
    end
  end
end
