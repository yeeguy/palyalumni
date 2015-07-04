class AddYearToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :year, :integer
  	add_column :users, :notification_preference, :string
  end
end
