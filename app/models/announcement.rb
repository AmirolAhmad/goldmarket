# == Schema Information
#
# Table name: announcements
#
#  id         :integer          not null, primary key
#  message    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_announcements_on_user_id  (user_id)
#

class Announcement < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :message

  default_scope -> { order('announcements.id DESC') }
end
