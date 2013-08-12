class CreateRecurrencies < ActiveRecord::Migration
  def change
    create_table :recurrencies do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
