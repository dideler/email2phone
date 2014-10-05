class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_zelda_sound
    send_file("#{Rails.root}/app/assets/sounds/zelda-secret.mp3")
  end

end
