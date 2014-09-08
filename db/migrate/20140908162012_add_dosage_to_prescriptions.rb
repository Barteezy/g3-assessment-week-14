class AddDosageToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :dosage, :string
  end
end
