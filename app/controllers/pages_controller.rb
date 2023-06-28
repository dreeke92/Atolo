class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    # redirect_to root_path
    @testimonials = Testimonial.where(category: "home_page").order(id: :asc)
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
    @products = []
    @products << Product.find_by(name_en: 'Reinforce multilingualism in your teams')
    @products << Product.find_by(name_en: 'Communication for Leaders')
    @products << Product.find_by(name_en: 'Teams In Action')

    # @products = Product.take(3)
  end

  def summer_class
    if Rails.env.production?
    # @products = Product.take(3)
    @products_1 = Product.where("id in (221, 222)").order(:id)
    @products_2 = Product.where("id in (223, 224)").order(:id)
    else
      @products_1 = Product.take(2)
      @products_2 = Product.take(2)
    end
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

  def category
    category = params[:category]
    if  category.include?("leadership")
      @class = 'green'
      @key = 'leadership'
      @testimonials = Testimonial.where(category: "leadership").order(id: :asc)
    elsif  category.include?("communication")
      @class = 'blue'
      @key = "communication"
      @testimonials = Testimonial.where(category: "communication").order(id: :asc)
    elsif  category.include?("people")
      @class = 'yellow'
      @key = "people"
      @testimonials = Testimonial.where(category: "people_and_culture").order(id: :asc)
    elsif  category.include?("languages")
      @class = 'red'
      @key = "languages"
      @testimonials = Testimonial.where(category: "languages").order(id: :asc)
    else
      redirect_to root_path
    end
  end
end
