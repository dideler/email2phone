class HomeController < ApplicationController

  def index
    #render layout: false # If you want to put everything in a single view.
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #@user.save!
    if @user.save # FIXME allows dupe emails right now
      flash[:notice] = "Enjoy :)" # FIXME
    end
    redirect_to action: "index"
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end
