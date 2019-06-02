class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    redirect_to root_path
  end

  def solutions
    @languages_products = Product.where(group: "Languages")
    @communication_products = Product.where(group: "Communication")
    @engagement_products = Product.where(group: "Engagement")
  end

  def redirect
    redirect_to root_path, notice: "Sorry, this route does not exist."
  end

end
