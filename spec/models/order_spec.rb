# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  client_name  :string(255)
#  client_email :string(255)
#  phone_number :string(255)
#  payment_date :string(255)
#  package_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_orders_on_package_id  (package_id)
#

require 'rails_helper'

RSpec.describe Order, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
