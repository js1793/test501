class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :leader_id
      t.string :email_account
      t.integer :email_type
      t.text :comments

      t.timestamps null: false
    end
  end
end
