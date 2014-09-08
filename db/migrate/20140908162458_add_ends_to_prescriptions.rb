class AddEndsToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :ends, :date
  end
end
