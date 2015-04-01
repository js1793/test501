class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :leader_title
      t.text :comments

      t.timestamps null: false
    end
  end
end
