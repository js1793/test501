class CreateMeridians < ActiveRecord::Migration
  def change
    create_table :meridians do |t|
      t.string :meridian_name
      t.text :comments

      t.timestamps null: false
    end
  end
end
