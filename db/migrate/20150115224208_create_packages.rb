class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
    	t.string :name
    	t.string :price
    	t.string :landing_date

      t.timestamps null: false
    end
  end
end
