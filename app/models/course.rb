class Course < ApplicationRecord
    belongs_to :user
    #has_many :users
    belongs_to :cheese
    belongs_to :instructor

end
