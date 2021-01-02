class SessionsController < ApplicationController

    def create
        user = User.find_by(email:login_params[:email])
        if user && user.authenticate(login_params[:password])
            session[:user_id] = user.id
            redirect_to '/home'
        elsif user && user.authenticate(login_params[:password]) && user.adminrights=="true"
                redirect_to '/home'	
                session[:user_id] = user.id
        else
            flash[:login_errors] = ['invalid credentials']
            redirect_to '/login'
        end
    end

    private
        def login_params
            params.require(:login).permit(:email, :password) 
        end
end
