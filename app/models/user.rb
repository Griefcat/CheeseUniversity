class User < ApplicationRecord
    has_many :users_courses
    has_many :courses, through: :users_courses
    has_many :cheeses, through: :courses
    has_many :instructors, through: :courses
end
