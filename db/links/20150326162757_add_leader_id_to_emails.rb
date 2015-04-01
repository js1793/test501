class AddLeaderIdToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :leader_id, :integer
  end
end
