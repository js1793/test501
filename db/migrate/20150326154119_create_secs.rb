class CreateSecs < ActiveRecord::Migration
  def change
    create_table :secs do |t|
      t.string :num_session
      t.string :day_session
      t.string :time_session
      t.text :comments

      t.timestamps null: false
    end
  end
end
