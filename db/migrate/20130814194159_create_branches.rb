class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :cnpj
      t.string :agence
      t.string :account

      t.timestamps
    end
  end
end
