class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.float :total_value
      t.integer :time_to_conclude
      t.references :competence_center

      t.timestamps
    end
    add_index :budgets, :competence_center_id
  end
end
