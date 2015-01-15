class OrdersController < ApplicationController
	def new
		@order ||= Order.new
		render
	end

	def create
		@order = Order.new(order_params)
  	if @order.save
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
