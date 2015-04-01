class AddSchoolIdToLeaders < ActiveRecord::Migration
  def change
    add_column :leaders, :school_id, :integer
  end
end
