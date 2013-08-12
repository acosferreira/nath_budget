class AddSuplierIdIntoBudgets < ActiveRecord::Migration
  def up
  	add_column :budgets, :supplier_id, :integer
  end

  def down
  end
end
