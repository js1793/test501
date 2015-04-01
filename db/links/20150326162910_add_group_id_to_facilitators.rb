class AddGroupIdToFacilitators < ActiveRecord::Migration
  def change
    add_column :facilitators, :group_id, :integer
  end
end
