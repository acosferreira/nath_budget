class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :value
      t.date :pay_day
      t.references :budget

      t.timestamps
    end
    add_index :payments, :budget_id
  end
end
