class AddLeaderIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :leader_one_id, :integer
    add_column :groups, :leader_two_id, :integer
    add_column :groups, :leader_three_id, :integer

    add_column :groups, :leader1_title_id, :integer
    add_column :groups, :leader2_title_id, :integer
    add_column :groups, :leader3_title_id, :integer

    add_column :groups, :leader1_role_id, :integer
    add_column :groups, :leader2_role_id, :integer
    add_column :groups, :leader3_role_id, :integer

    add_column :groups, :coach_one_id, :integer
    add_column :groups, :coach_two_id, :integer


  end
end
