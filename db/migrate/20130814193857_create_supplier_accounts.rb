class CreateSupplierAccounts < ActiveRecord::Migration
  def change
    create_table :supplier_accounts do |t|
      t.references :bank
      t.string :agence
      t.string :number
      t.references :supplier

      t.timestamps
    end
    add_index :supplier_accounts, :bank_id
    add_index :supplier_accounts, :supplier_id
  end
end
