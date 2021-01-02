class UsersController < ApplicationController

    def main_page

    end

    def login

    end

    def register

    end



    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to '/home'
        else
            flash[:register_errors] = user.errors.full_messages
            redirect_to '/home'
        end

    end


    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end


end
