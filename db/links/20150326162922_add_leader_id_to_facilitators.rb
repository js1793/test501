class AddLeaderIdToFacilitators < ActiveRecord::Migration
  def change
    add_column :facilitators, :leader_id, :integer
  end
end
