class CreateSupplierContracts < ActiveRecord::Migration
  def change
    create_table :supplier_contracts do |t|
      t.date :initial_date
      t.text :description
      t.text :observation
      t.references :supplier

      t.timestamps
    end
    add_index :supplier_contracts, :supplier_id
  end
end
