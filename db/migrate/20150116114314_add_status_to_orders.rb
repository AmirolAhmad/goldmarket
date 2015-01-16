class AddStatusToOrders < ActiveRecord::Migration
  def up
    add_column :orders, :status, :string unless column_exists? :orders, :status
  end

  def down
    remove_column :orders, :status if column_exists? :orders, :status
  end
end
