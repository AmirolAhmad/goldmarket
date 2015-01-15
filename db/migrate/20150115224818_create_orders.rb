class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :client_email
      t.string :phone_number
      t.string :payment_date
      t.belongs_to :package, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :packages
  end
end
