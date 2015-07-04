class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
    	t.integer :invitation_token_id
      t.string :email
      t.integer :accepted_by
      t.timestamp :accepted_at
      t.boolean :bounced, :default => false

      t.timestamps null: false
    end

    add_index :invitations, :invitation_token_id
  end
end
