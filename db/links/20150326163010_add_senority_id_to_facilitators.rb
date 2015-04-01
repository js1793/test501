class AddSenorityIdToFacilitators < ActiveRecord::Migration
  def change
    add_column :facilitators, :supervisor_id, :integer
  end
end
