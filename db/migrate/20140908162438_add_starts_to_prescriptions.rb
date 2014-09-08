class AddStartsToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :starts, :date
  end
end
