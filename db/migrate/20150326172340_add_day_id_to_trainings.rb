class AddDayIdToTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :day_id, :integer
  end
end
