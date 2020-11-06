class User < ApplicationRecord
    has_many :courses 
    has_many :cheeses, through: :courses
    has_many :instructors, through: :courses
end
