class SendTextController < ApplicationController
  def index
  end
 
  def send_text_message
    TextSender.send_message(params[:number_to_send_to], params[:message_to_send])

    flash[:notice] = "Your message has been sent! Woopie"
    redirect_to '/'
  end
end
  