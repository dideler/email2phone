class HomeController < ApplicationController

  def index
    #render layout: false # If you want to put everything in a single view.
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save!
  end

end
