class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def solutions
    @languages_products = Product.all
    @communication_products = Product.all
    @engagement_products = Product.all
  end
end
