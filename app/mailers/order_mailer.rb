class OrderMailer < ApplicationMailer
	def order_email(order)
    @order = order

    mail(
      :to => "#{order.client_name} <#{order.client_email}>",
      :subject => "Thank you for placing an order with us!"
      )
   end

   def notify_admin(order)
    @order = order

    mail(
      :to => "revolusinetwork@gmail.com",
      :subject => "New order has been created by #{order.client_name}!"
    )
   end
end
