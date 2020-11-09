class Cheese < ApplicationRecord
    has_many :courses 
    has_many :users, through: :courses
    has_many :instructors, through: :courses
    has_many :cheese_recipes
end
