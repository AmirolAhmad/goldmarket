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

class Order < ActiveRecord::Base
  belongs_to :package

  validates_presence_of :client_name
  validates_presence_of :client_email
  validates_presence_of :payment_date
  validates :phone_number, length: { in: 8..15 }, format: { with: /\A0[0-9\-\+ \/]*\z/ }, allow_blank: false, :numericality => true

  default_scope -> { order('orders.id DESC') }
end
