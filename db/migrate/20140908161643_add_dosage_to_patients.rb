class AddDosageToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :dosage, :string
  end
end
