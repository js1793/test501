class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :leader_id
      t.integer :menu_id
      t.string :registered
      t.string :attended
      t.string :day
      t.string :payment
      t.string :certificate
      t.text   :comments

      t.timestamps null: false
    end
  end
end
