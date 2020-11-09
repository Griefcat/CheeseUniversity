class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :image
  
      t.integer :cheese_id
      t.integer :instructor_id
      t.text :description

      t.timestamps
    end
  end
end
