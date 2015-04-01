class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.integer :group_id
      t.integer :coach_id
      t.integer :seniority_id
      t.timestamps null: false
    end
  end
end

