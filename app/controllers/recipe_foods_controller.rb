class RecipeFoodsController < ApplicationController
    def index
   @foods = Food.all
    end
    def show
    end
    def new 
      @user = current_user
      @recipe = Recipe.find_by_id(params[:recipe_id])
      @available_food = @user.foods
      @recipe_food = RecipeFood.new
    
    end
    def destroy
    end
    def create
        @ingredient = RecipeFood.new(quantity: recipe_food_params[:quantity])
        if @ingredient.valid? && @ingredient.save
            redirect_to user_recipes_path
          else
            render :new
          end
    end
    private
    def recipe_food_params
        params.require(:recipe_food).permit(:quantity)
    end
  end
  