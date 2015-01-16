class Admin::OrdersController < ApplicationController
	before_filter :require_admin

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
		if @order
			respond_to do |format|
        format.html { @order }
      end
    else
      redirect_to admin_master_path, notice: "Order not found."
    end
	end
end
