class Prescription < ActiveRecord::Base
  validates :medication, presence: true
  validates :dosage, presence: true
  validates :schedule, presence: true
  validates :starts, presence: true
  validates :ends, presence: true
end