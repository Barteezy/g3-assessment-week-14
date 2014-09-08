class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :medication
      t.string :dosage_schedule
      t.string :dates
      t.integer :patient_id
    end
  end
end
