class AddRoleIdToFacilitators < ActiveRecord::Migration
  def change
    add_column :facilitators, :role_id, :integer
  end
end
