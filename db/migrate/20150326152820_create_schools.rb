class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_name
      t.integer :school_gid
      t.text :comments
      t.string :school_address
      t.string :school_url
      t.text :comments

      t.timestamps null: false
    end
  end
end
