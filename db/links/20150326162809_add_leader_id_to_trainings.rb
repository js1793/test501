class AddLeaderIdToTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :leader_id, :integer
  end
end
