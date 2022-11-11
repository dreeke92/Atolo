class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    redirect_to root_path
  end

  def solutions
    @languages_products = Product.where(group: "Languages").sort_by { |k| -k[:ranking] }.reverse!
    @communication_products = Product.where(group: "Communication").sort_by { |k| -k[:ranking] }.reverse!
    @engagement_products = Product.where(group: "Engagement").sort_by { |k| -k[:ranking] }.reverse!
  end

  def redirect
    redirect_to root_path, notice: "Sorry, this route does not exist."
  end

  def events
    # @products = Product.where("id in (218,219,206)")
    @products = Product.where("name_en in ('Reinforce multilingualism in your teams','Communication for Leaders','Teams in action')")
    # @products = Product.take(3)
  end

  def promotions
    if locale == :en
      @voucher = "voucher_en.pdf"
      @classic = "classic_en.pdf"
    elsif locale == :fr
      @voucher = "voucher_fr.pdf"
      @classic = "classic_fr.pdf"
    elsif locale == :nl
      @voucher = "voucher_nl.pdf"
      @classic = "classic_nl.pdf"
    elsif locale == :de
      @voucher = "voucher_de.pdf"
      @classic = "classic_de.pdf"
    else
      @voucher == "voucher_en.pdf"
      @classic = "classic_en.pdf"
    end
  end
end
