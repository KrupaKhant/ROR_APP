class SessionsController < ApplicationController
    def create
      @user = User.find_by(username: params[:username])
  
      if @user.role == "admin"
        redirect_to products_path
      else
        redirect_to root_path
      end
  
      # if !!@user && @user.authenticate(params[:password])
      #   session[:user_id] = @user.id
      #   redirect_to products_path
      # else
      #   message = "Something went wrong! Make sure your username and password are correct."
      #   redirect_to root_path, notice: message
      # end
    end
  end