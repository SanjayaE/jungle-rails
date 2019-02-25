
# class UserMailerPreview < ActionMailer::Preview
#   def order_email
#     UserMailer.with(order: @order.id).order_email
#   end
# end



class UserMailerPreview < ActionMailer::Preview
  def order_email
   user = @current_user
    UserMailer.order_email(user)
  end
end