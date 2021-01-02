class BikesController < ApplicationController

    def index
        
    end

    def logout     
        session[:user_id] = nil     
        redirect_to '/home' 
    end  
end
