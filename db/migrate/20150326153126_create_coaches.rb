class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.integer :coach_gid
      t.integer :school_id
      t.string :email
      t.text :comments

      t.timestamps null: false
    end
  end
end
