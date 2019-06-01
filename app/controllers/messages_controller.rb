class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      send_mail(@message)
    end
    # redirect_back(fallback_location: root_path)
  end

  def index
  end

  private

  def message_params
    params.require(:message).permit(:name, :company, :email, :content, :copy, :robot)
  end

  def send_mail(message)
    UserMailer.with(name: message.name, company: message.company, email: message.email, content: message.content).inbound.deliver_now
  end

end
