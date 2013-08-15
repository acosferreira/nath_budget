class AddSupplierToPayment < ActiveRecord::Migration
  def change
  	add_column :payments, :supplier_id, :integer
  end
end
