class OrdersController < ApplicationController
	before_filter :disable_header, only: [:new, :create]

	def new
		@order ||= Order.new
		render

		@disable_header = true
	end

	def create
		@order = Order.new(order_params)
  	if @order.save
  		OrderMailer.order_email(@order).deliver
  		OrderMailer.notify_admin(@order).deliver
  		
  		redirect_to root_path, notice: "Order has been submit"
  	else
  		render 'new'
  	end
	end

	private

	def order_params
  	params.require(:order).permit(:package_id, :client_name, :client_email, :phone_number, :payment_date)
  end
end
