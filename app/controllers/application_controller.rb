class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :set_locale
  protect_from_forgery with: :null_session

  rescue_from ActionController::RoutingError do |exception|
    flash[:error] = "There is no such route"
    redirect_to root_url
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  private

  def set_locale
    I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  end

end
