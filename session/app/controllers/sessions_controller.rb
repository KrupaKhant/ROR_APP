class SessionsController < ApplicationController

    def new
    end
  
    def create
      user = User.find_by(email: params[:email])
        session[:user_id] = user.id
        redirect_to root_path, notice: 'Logged in successfully'
    end
  
    def destroy
      session.delete(:user_id)
      session.delete(:product_id)
  
      redirect_to new_session_path, notice: 'Logged out successfully'
    end
    
end
