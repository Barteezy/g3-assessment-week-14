class PrescriptionsController < ApplicationController

  def new
    p params
    @patient = Patient.find(params[:patient_id])
    @prescription = Prescription.new
  end

  def create
    p params
    @patient = Patient.find(params[:patient_id])
    @prescription = Prescription.new
    @prescription.medication = params[:prescription][:medication]
    @prescription.dosage = params[:prescription][:dosage]
    @prescription.schedule = params[:prescription][:schedule]
    @prescription.ends = params[:prescription][:ends]
    @prescription.starts = params[:prescription][:starts]
    @prescription.patient_id = @patient.id
    if @prescription.save
      redirect_to patient_path(@patient)
    else
      @prescription = Prescription.new
      @prescription.valid?
      render :new
    end

  end


end