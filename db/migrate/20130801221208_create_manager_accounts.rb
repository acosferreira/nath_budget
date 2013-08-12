class CreateManagerAccounts < ActiveRecord::Migration
  def change
    create_table :manager_accounts do |t|
      t.string :name
      t.integer :identifier

      t.timestamps
    end
  end
end
