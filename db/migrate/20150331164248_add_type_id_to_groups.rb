class AddTypeIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :type_id, :integer
  end
end
