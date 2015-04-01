class CreateCoachOrders < ActiveRecord::Migration
  def change
    create_table :coach_orders do |t|
      t.string :coach_role

      t.timestamps null: false
    end
  end
end
