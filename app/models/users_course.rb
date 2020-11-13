class UsersCourse < ApplicationRecord
    belongs_to :user
    belongs_to :course
    #validates :course, uniqueness: :true
end
