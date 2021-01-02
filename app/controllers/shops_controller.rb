class ShopsController < ApplicationController

    def show

    end

    def index
        @Shop = Shop.all
    end
    
    def new
        @Shop = Shop.new
    end

    def edit
        @Shop = Shop.find(params[:id])
    end

    def delete
        @Shop = Shop.find(params[:id])
        @Shop.destroy
        redirect_to action:"index"
    end

    def update
        @Shop = Shop.find(params[:id])
        @Shop.assign_attributes(shop_params)
        if @Shop.valid?
            @Shop.save
        flash[:notice] = "Updated"
        redirect_to action:"index"
        else
            flash[:notice] = "Update failed"
            redirect_to action:"index"
            end
        
    end

    def search
        @Shop = Shop.where("title LIKE?", "%" +params[:q] + "%")
        render "index"
    end

    def shop_params
        params.require(:shop).permit(:title,:biketypes,:gearquantity,:price)	
    end

    def basket

    end
end
