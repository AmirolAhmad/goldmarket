class Admin::OrdersController < ApplicationController
	before_filter :require_admin

	def index
		@orders = Order.all
	end
end
