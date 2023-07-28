class UserMailer < ApplicationMailer
  require 'open-uri'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.inbound.subject
  #
  def inbound(message_id)
    @message =  Message.find(message_id)
    mail.attachments[@message.attachment.filename] =  URI.open(@message.attachment.url).read if @message.attachment.present?
    mail to: "admin@atolo.global"
  end
end
