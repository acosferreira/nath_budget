class AddFieldsOnBudget < ActiveRecord::Migration
  def up
  	add_column :budgets, :contract_number, :string
  	add_column :budgets, :recurrency_id, :integer
  	add_column :budgets, :expiration_date, :date
  end

  def down
 	remove_column :budgets, :contract_number
  	remove_column :budgets, :recurrency_id
  	remove_column :budgets, :expiration_date
  end
end
