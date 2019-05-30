class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.inbound.subject
  #
  def inbound
    @name = params[:name]
    @company = params[:company]
    @email = params[:email]
    @content = params[:content]
    @copy = params[:copy]

    mail to: "admin@sales.global"
  end
end
