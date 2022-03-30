class InventoriesController < ApplicationController


    def index
        @inventories = Inventory.all
      end
    
      def show
        @inventory = Inventory.find(params[:id])
      end
    
      def new
        @inventory = Inventory.new
      end
    
      def create
        @inventory = Inventory.new(name: inventory_params[:name])
        if @inventory.valid? && @inventory.save
          redirect_to inventory_path
        else
          render :new
        end
      end
    
      def destroy
        @inventory = Inventory.find(params[:id])
        @inventory.destroy!
        redirect_to inventory_path
      end
    
      private
    
      def inventory_params
        params.require(:inventory).permit(:name)
      end
    end
