class RemoveDosageScheduleFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :dosage_schedule, :string
  end
end
