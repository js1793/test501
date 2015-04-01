class CreateFacilitators < ActiveRecord::Migration
  def change
    create_table :facilitators do |t|
      t.integer :group_id
      t.integer :leader_id
      t.integer :role_id
      t.integer :title_id

      t.timestamps null: false
    end
  end
end
