class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(name: recipe_params[:name], preparation_time: recipe_params[:preparation_time],
                         cooking_time: recipe_params[:cooking_time],
                         description: recipe_params[:description], public: recipe_params[:public])
    if @recipe.valid? && @recipe.save
      redirect_to user_recipes_path
    else
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy!
    redirect_to user_recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
