class RemoveDiseaseFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :disease, :string
  end
end
