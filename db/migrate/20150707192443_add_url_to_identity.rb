class AddUrlToIdentity < ActiveRecord::Migration
  def change
  	add_column :identities, :url, :string
  end
end
