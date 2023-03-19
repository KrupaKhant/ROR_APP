class DemoController < ApplicationController

  def index
    @name = params[:name]
    @users_count = 3
  end

end
