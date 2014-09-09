class Prescription < ActiveRecord::Base
  validates :medication, presence: true
  validates :dosage, presence: true
  validates :schedule, presence: true
  validates :starts, presence: true
  validates :ends, presence: true

  validate :starts_before_ends


  def starts_before_ends
    if :starts > :ends
      errors.add(:starts, "can't be after ends")
    end
  end
end