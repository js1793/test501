class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_gid
      t.string :cycle_id
      t.integer :school_id
      t.string :meridian
      t.text :comments

      t.timestamps null: false
    end
  end
end
