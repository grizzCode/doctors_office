class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  #set_*model* is private method that loads in called index automatically
 def index
    @patients = Patient.all
  end
  
 def new
    @patient = Patient.new
  end
  
 def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end
  
 def show
   #before_action
 end
  
 def edit
   #before_action
 end
  
 def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patients_path
    else
      render :edit
    end
  end
  
 def destroy
    @patient.destroy
    redirect_to patients_path
  end
  
 private
  def patient_params
    params.require(:patient).permit(:first_name, :last_name)
  end
  
 def set_patient
    @patient = Patient.find(params[:id])
  end

end
