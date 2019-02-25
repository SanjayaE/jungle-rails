class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    # puts @products[0].inspect
  end

  def show
    @product = Product.find params[:id]
    @review = Review.new
  end


end
