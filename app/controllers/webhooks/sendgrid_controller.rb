class Webhooks::SendgridController < WebhooksController

  # POST /inbound -> /webhooks/sendgrid#email
  def email
    ap params if Rails.env.development?
  end

end
