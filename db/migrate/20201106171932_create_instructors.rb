class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :instructor_name
      t.string :specialty
      t.string :email
      t.string :biography
      t.string :image_url

      t.timestamps
    end
  end
end
