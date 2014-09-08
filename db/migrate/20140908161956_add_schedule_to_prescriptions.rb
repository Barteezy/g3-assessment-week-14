class AddScheduleToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :schedule, :string
  end
end
