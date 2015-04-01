class AddCycleIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :cycle_id, :integer
  end
end
