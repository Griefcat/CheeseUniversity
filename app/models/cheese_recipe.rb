class CheeseRecipe < ApplicationRecord
    belongs_to :cheese

    validates :name, :ingredients, :directions, :image, presence: true
    validates :name, uniqueness: {case_sensitive: false}
end
