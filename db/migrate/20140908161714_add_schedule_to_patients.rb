class AddScheduleToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :schedule, :string
  end
end
