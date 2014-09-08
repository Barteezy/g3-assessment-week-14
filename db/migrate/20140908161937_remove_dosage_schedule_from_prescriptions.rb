class RemoveDosageScheduleFromPrescriptions < ActiveRecord::Migration
  def change
    remove_column :prescriptions, :dosage_schedule, :string
  end
end
