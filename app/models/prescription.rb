class Prescription < ActiveRecord::Base
  validates :medication, presence: true
  validates :dosage, presence: true
  validates :schedule, presence: true
  validates :starts, presence: true
  validates :ends, presence: true

  validate :starts_before_ends
  validate :dosage_starts_with_integer


  def starts_before_ends
    if :starts > :ends
      errors.add(:starts, "can't be after ends")
    end
  end

  def dosage_starts_with_integer

    if self.dosage.index(/^\d+\s/) == nil
      errors.add(:dosage, "must start with an integer")
    end
  end
end