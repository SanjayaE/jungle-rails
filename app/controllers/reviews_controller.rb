class ReviewsController < ApplicationController

  def create
    @product_id = params.require(:product_id)
    @review = Review.new(reviewInfo)
    @review.product_id = @product_id
    @review.user_id = current_user.id
    if (@review.user == current_user)
    @review.save
    redirect_to '/products/'+@product_id
    else
     redirect_to '/products/'+@product_id
    end
  end



 def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    @review.destroy

    redirect_to @product
  end

 private
  def reviewInfo
    params.require(:review).permit(:rating, :description)
  end

  end




