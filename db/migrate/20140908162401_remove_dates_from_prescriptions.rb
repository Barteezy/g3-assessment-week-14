class RemoveDatesFromPrescriptions < ActiveRecord::Migration
  def change
    remove_column :prescriptions, :dates, :string
  end
end
