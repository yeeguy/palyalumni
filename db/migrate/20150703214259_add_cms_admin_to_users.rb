class AddCmsAdminToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :cms_admin, :boolean, :default => false
  end
end
