module Authenticable
  extend ActiveSupport::Concern
  included do
    helper_method :require_admin
  end

  private
  def require_admin
    unless current_user.try(:admin?)
      flash.notice = "Permissions required to access this page."
      redirect_to root_path
    end
  end
end