class AddColumnsOnSuppliers < ActiveRecord::Migration
  def up
  	add_column :suppliers, :cpf, :integer
  	add_column :suppliers, :cnpj, :integer
  	add_column :suppliers, :type_supplier, :string
  	add_column :supplier_contracts, :agence, :string
  	add_column :supplier_contracts, :account_number, :string
  	
  end

  def down
  	remove_column :suppliers, :cpf
  	remove_column :suppliers, :cnpj
  	remove_column :suppliers, :type_supplier
  	remove_column :supplier_contracts, :agence
  	remove_column :supplier_contracts, :account_number
  end
end
