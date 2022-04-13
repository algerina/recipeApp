class RecipeFoodsController < ApplicationController
    def index
   @foods = Food.all
    end
    def show
    end
    def new 
      @foods = Food.all
      @user = current_user
      @recipe = Recipe.find_by_id(params[:recipe_id])
      # @available_food = @user.foods
      @recipe_food = RecipeFood.new
    end
    def destroy
    end
    def create
      @recipe = Recipe.find(params[:recipe_id])
        @ingredient = @recipe.recipe_foods.new(quantity: recipe_food_params[:quantity], food_id: recipe_food_params[:food_id])
        if @ingredient.valid? && @ingredient.save
            redirect_to recipe_path(@recipe.id)
          else
            render :new
          end
    end
    private
    def recipe_food_params
        params.require(:recipe_food).permit(:quantity, :recipe_id, :food_id)
    end
  end
  