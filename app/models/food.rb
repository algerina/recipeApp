class Food < ApplicationRecord
  # belongs_to :user
  has_many :inventory_foods, foreign_key: 'food_id'
  has_many :recipe_foods, foreign_key: 'food_id'
end
