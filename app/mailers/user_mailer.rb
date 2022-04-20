class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.inbound.subject
  #
  def inbound(message_id)
    @message =  Message.find(message_id)

    mail to: "admin@atolo.global"
  end
end
