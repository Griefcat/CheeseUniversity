class Instructor < ApplicationRecord
    has_many :courses 
    has_many :users, through: :courses
    has_many :cheeses, through: :courses
end
