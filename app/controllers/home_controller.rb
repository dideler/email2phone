class HomeController < ApplicationController

  def index
    #render layout: false # If you want to put everything in a single view.
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      format.html { redirect_to action: "new", notice: 'Enjoy :)' } # Try success
    else
      format.html { render action: "new" }
    end
  end

end
