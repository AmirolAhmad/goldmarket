class Admin::PackagesController < ApplicationController
	before_filter :require_admin

	def index
		@packages = Package.all
	end

	def edit
		@package = Package.find(params[:id])
		if @package
      render
    else
      redirect_to admin_packages_path, notice: "Package not found."
    end
	end

	def update
		@package = Package.find(params[:id])
		if @package.update(package_params)
      redirect_to admin_packages_path, notice: "Package has been updated."
    else
      render 'edit'
    end
	end

	private

	def package_params
  	params.require(:package).permit(:id, :name, :price, :landing_date)
  end
end
