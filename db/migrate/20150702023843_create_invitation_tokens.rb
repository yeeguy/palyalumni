class CreateInvitationTokens < ActiveRecord::Migration
  def change
    create_table :invitation_tokens do |t|
      t.integer :from
      t.string :token

      t.timestamps null: false
    end

    add_index :invitation_tokens, :token
  end
end
