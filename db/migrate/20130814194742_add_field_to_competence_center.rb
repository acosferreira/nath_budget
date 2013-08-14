class AddFieldToCompetenceCenter < ActiveRecord::Migration
  def change
  	add_column :competence_centers, :code, :string
  end
end
