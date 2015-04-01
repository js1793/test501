class CreateSeniorities < ActiveRecord::Migration
  def change
    create_table :seniorities do |t|
      t.string :coach_role

      t.timestamps null: false
    end
  end
end
