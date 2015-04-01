class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.integer :leader_gid
      t.integer :school_id
      t.text :comments

      t.timestamps null: false
    end
  end
end
