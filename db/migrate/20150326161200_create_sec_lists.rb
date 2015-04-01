class CreateSecLists < ActiveRecord::Migration
  def change
    create_table :sec_lists do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
