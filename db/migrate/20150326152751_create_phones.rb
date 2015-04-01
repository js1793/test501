class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :leader_id
      t.string :phone_number
      t.integer :phone_type
      t.text :comments

      t.timestamps null: false
    end
  end
end
