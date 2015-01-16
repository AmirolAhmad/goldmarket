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

require 'rails_helper'

RSpec.describe Announcement, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
