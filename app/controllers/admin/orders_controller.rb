class Admin::OrdersController < ApplicationController
	before_filter :set_order, only: [:show, :destroy, :complete, :pending]
	before_filter :require_admin

	def index
		@orders = Order.all
	end

	def show
		if @order
			respond_to do |format|
        format.html { @order }
      end
    else
      redirect_to admin_master_path, notice: "Order not found."
    end
	end

	def destroy
		@order.destroy
    redirect_to admin_master_path, notice: "Order has been deleted."
	end

	def complete
		@order.update_attributes(:status => 'complete')
    redirect_to admin_master_path
	end

	def pending
		@order.update_attributes(:status => 'pending')
    redirect_to admin_master_path
	end

	private

	def set_order
		@order = Order.find(params[:id])
	end
end
