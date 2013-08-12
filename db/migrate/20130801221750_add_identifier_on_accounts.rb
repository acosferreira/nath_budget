class AddIdentifierOnAccounts < ActiveRecord::Migration
  def up
  	add_column :accounts, :identifier, :integer
  end

  def down
  	remove_column :accounts, :identifier
  end
end
