class AddBalanceToBudget < ActiveRecord::Migration
  def change
  	add_column :budgets, :balance, :float
  end
end
