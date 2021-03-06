class Admin::AnnouncementsController < ApplicationController
	before_filter :set_announcement, only: [:edit, :update, :destroy]
	before_filter :require_admin

	def index
		@announcements = Announcement.all
	end

	def new
		@announcement ||= Announcement.new
		render
	end

	def create
		@announcement = Announcement.new(announcement_params)
		@announcement.update_attributes(:user_id => current_user.id)

  	if @announcement.save
  		redirect_to admin_announcements_path, notice: "Announcement has been added"
  	else
  		render 'new'
  	end
	end

	def edit
		if @announcement
      render
    else
      redirect_to admin_announcements_path, notice: "Announcement not found."
    end
	end

	def update
		if @announcement.update(announcement_params)
      redirect_to admin_announcements_path, notice: "Announcement has been updated."
    else
      render 'edit'
    end
	end

	def destroy
		@announcement.destroy
    redirect_to admin_announcements_path, notice: "Announcement has been deleted."
	end

	private

	def set_announcement
		@announcement = Announcement.find(params[:id])
	end

	def announcement_params
  	params.require(:announcement).permit(:user_id, :message)
  end
end
