class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @category_color = @product.category_color
  end

  def preview
    @product = Product.find(params[:id])
    @category_color = @product.category_color
  end

  def index
    @products = Product.all
  end
end
