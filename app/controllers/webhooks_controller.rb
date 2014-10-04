class WebhooksController < ApplicationController
  #skip_before_action :verify_authenticity_token # TODO: enable when needed
  protect_from_forgery with: :null_session
end
