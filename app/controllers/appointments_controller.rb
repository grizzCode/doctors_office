class AppointmentsController < ApplicationController
  before_action :set_doctor
  before_action :set_patient, only: %i[new create update]
  def index
    @appointments = @doctor.appointments.all
  end

  def new
    @appointment = @doctor.appointments.new
  end

  def create
    @appointment = @doctor.appointments.new(appointment_params)
    if @appointment.save
      redirect_to doctor_path(@doctor)
    else
      render :new
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to doctor_path(@doctor)
    else
      render :edit
    end
  end

  def destroy
    @doctor.appointments.find(params[:id]).destroy
    redirect_to physicians_path
  end

  def show
   #before_action
  end

  private

  def set_patient
    @patient = Patient.all - @doctor.patients
  end

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :patient_id, :doctor_id)
  end

end