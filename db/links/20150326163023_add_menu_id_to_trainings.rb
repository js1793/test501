class AddMenuIdToTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :menu_id, :integer
  end
end
