class CreateCheeses < ActiveRecord::Migration[6.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.string :cheese_type
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
