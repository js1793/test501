class AddTitleIdToFacilitators < ActiveRecord::Migration
  def change
    add_column :facilitators, :title_id, :integer
  end
end
