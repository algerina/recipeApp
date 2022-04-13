class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(name: food_params[:name], price: food_params[:price],
                     measurement_unit: food_params[:measurement_unit])
    if @food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy!
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
