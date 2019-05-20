class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def solutions
    @languages_products = Product.where(group: "Languages")
    @communication_products = Product.where(group: "Communication")
    @engagement_products = Product.where(group: "Engagement")
  end
end
