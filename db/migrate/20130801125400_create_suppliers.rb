class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.boolean :contract
      t.string :contact_name
      t.string :contact_telephone
      t.string :contact_email

      t.timestamps
    end
  end
end
