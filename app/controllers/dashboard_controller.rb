class DashboardController < ApplicationController
  def index
    @patients = Patient.order(:first_name, :last_name)
    @medications = Medication.order(:name)
  end

  def show
    p params
    @medications = Medication.find(params["format"])
    @prescription = Prescription.find_by(medication: @medications.name)
    @patients = Patient.all
  end

end