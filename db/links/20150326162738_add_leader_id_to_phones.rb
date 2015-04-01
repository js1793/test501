class AddLeaderIdToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :leader_id, :integer
  end
end
