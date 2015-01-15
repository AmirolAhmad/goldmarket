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

require 'rails_helper'

RSpec.describe Package, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
