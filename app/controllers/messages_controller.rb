class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      send_mail(@message)
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def message_params
    params.require(:message).permit(:name, :company, :email, :content, :phone, :copy, :robot)
  end

  def send_mail(message)
    UserMailer.inbound(message.id).deliver_now
  end

end
