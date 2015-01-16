class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :message
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :announcements, :users
  end
end
