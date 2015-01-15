# == Schema Information
#
# Table name: packages
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  price        :string(255)
#  landing_date :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Package < ActiveRecord::Base
	has_many :orders
end
