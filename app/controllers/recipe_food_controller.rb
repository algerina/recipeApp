class RecipeFoodController < ApplicationController
    def index
   @foods = Food.all
    end
    def show
    end
    def new 
        @foods = Food.all
    end
    def destroy
    end
    def create
    end
  end
  