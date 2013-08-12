class CreateCompetenceCenters < ActiveRecord::Migration
  def change
    create_table :competence_centers do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :competence_centers, :user_id
  end
end
