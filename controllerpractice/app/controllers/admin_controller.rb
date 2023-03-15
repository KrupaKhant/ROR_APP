class AdminController < ApplicationController
    before_action :require_admin
  
    private
    def require_admin
      unless current_user && current_user.role=="admin"
        redirect_to root_path, alert: "Access denied"
      end
    end
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end