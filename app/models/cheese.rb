class Cheese < ApplicationRecord
    has_many :courses 
    has_many :users, through: :courses
    has_many :instructors, through: :courses
    has_one :cheese_recipe
end
