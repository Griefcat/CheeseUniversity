class Course < ApplicationRecord
    has_many :users_courses
    has_many :users, through: :users_courses
    #has_many :users
    belongs_to :cheese
    belongs_to :instructor

end
