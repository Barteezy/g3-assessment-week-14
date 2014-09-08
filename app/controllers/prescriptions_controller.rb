class PrescriptionsController < ApplicationController

  def new
    p params
    @patient = Patient.find(params[:patient_id])
    @prescription = Prescription.new
  end


end