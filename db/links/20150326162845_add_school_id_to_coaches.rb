class AddSchoolIdToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :school_id, :integer
  end
end
