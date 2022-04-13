class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  def get_ingredient(recipe)
    ingredient= []
    recipe_foods = RecipeFood.where(recipe_id: recipe)

    recipe_foods.each do |recipe_food|
      Food.where(id: recipe_food.food_id).each do |food|
        ingredient.push(food)
      end
    end
    ingredient
  end


 
  
end
