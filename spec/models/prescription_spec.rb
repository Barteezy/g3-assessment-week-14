require 'rails_helper'

describe 'prescriptions' do
  it 'validates that start date is before end date' do
    prescription = Prescription.new
    expect(prescription.valid?).to be(false)
    prescription.medication = "Advil"
    prescription.patient_id = 1
    prescription.dosage = "1 mg"
    prescription.schedule = "per day"
    expect(prescription.valid?).to be(false)
    prescription.starts = Date.new(2014, 1, 1)
    prescription.ends = Date.new(2013, 1, 1)
    expect(prescription.valid?).to be(false)
    prescription.ends = Date.new(2014, 2, 1)
    expect(prescription.valid?).to be(false)
  end
end
