class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.string :cycle_name
      t.text :comments

      t.timestamps null: false
    end
  end
end
