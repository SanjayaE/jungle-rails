class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_email.subject
  #

  default from: "no-reply@jungle.com"
  def order_email(order)
    # @user = user
    @order = order
    @url = 'http://localhost:3000/rails/mailers/user_mailer/order_email'
    mail(to: @order.email, subject: "Your order number: #{@order.id} has shipped!")
  end
end
