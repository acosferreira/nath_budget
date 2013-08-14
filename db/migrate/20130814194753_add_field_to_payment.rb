class AddFieldToPayment < ActiveRecord::Migration
  def change
  	add_column :payments, :branch_id, :integer
  end
end
