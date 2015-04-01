class AddMeridianIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :meridian_id, :integer
  end
end
