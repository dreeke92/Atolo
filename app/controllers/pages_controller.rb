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

  def newbies
    if Rails.env.production?
    # @products = Product.take(3)
      @product_1 = Product.find(236)
      @product_2 = Product.find(248)
      @product_3 = Product.find(251)
      @testimonials = Testimonial.where(category: "newbies").order(id: :asc)
    else
      @product_1 = Product.take(2).first
      @product_2 = Product.take(2).last
      @product_3 = Product.take(3).last
      @testimonials = Testimonial.where(category: "leadership").order(id: :asc)
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
      if Rails.env == "production"
        @products = []
        @products << Product.find(237)
        @products << Product.find(238)
        @products << Product.find(240)
        @products << Product.find(239)
        @products << Product.find(257)
        @products << Product.find(258)
      else
        @products = Product.where("name_en IS NOT NULL").take(4)
      end
    elsif  category.include?("communication")
      @class = 'blue'
      @key = "communication"
      @testimonials = Testimonial.where(category: "communication").order(id: :asc)
      if Rails.env == "production"
        @products_1 = []
        @products_2 = []
        @products_1 << Product.find(225)
        @products_1 << Product.find(226)
        @products_1 << Product.find(227)
        @products_1 << Product.find(228)
        @products_2 << Product.find(229)
        @products_2 << Product.find(230)
        @products_2 << Product.find(231)
        @products_2 << Product.find(232)
      else
        @products_1 = Product.where("name_en IS NOT NULL").take(4)
        @products_2 = Product.where("name_en IS NOT NULL").take(4)
      end
    elsif  category.include?("people")
      @class = 'yellow'
      @key = "people"
      @testimonials = Testimonial.where(category: "people_and_culture").order(id: :asc)
      if Rails.env == "production"
        @products_1 = []
        @products_2 = []
        @products_3 = []
        @products_1 << Product.find(251)
        @products_1 << Product.find(233)
        @products_1 << Product.find(252)
        @products_1 << Product.find(236)
        @products_2 << Product.find(256)
        @products_2 << Product.find(234)
        @products_2 << Product.find(254)
        @products_2 << Product.find(255)
        @products_2 << Product.find(253)
        @products_3 << Product.find(235)
      else
       @products_1 = Product.where("name_en IS NOT NULL").take(3)
        @products_2 = Product.where("name_en IS NOT NULL").take(4)
        @products_3 = Product.where("name_en IS NOT NULL").take(1)
      end
    elsif  category.include?("languages")
      @class = 'red'
      @key = "languages"
      @testimonials = Testimonial.where(category: "languages").order(id: :asc)
      if Rails.env == "production"
        @products_1 = []
        @products_2 = []
        @products_3 = []
        @products_1 << Product.find(241)
        @products_1 << Product.find(242)
        @products_1 << Product.find(243)
        @products_2 << Product.find(244)
        @products_2 << Product.find(245)
        @products_2 << Product.find(246)
        @products_2 << Product.find(247)
        @products_3 << Product.find(248)
        @products_3 << Product.find(249)
        @products_3 << Product.find(250)
      else
        @products_1 = Product.where("name_en IS NOT NULL").take(4)
        @products_2 = Product.where("name_en IS NOT NULL").take(4)
        @products_3 = Product.where("name_en IS NOT NULL").take(4)
      end
    else
      binding.pry
      redirect_to root_path
    end
  end
end
