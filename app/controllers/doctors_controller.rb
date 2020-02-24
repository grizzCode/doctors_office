class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  #set_*model* is private method that loads in called index automatically
 def index
    @doctors = Doctor.all
  end
  
 def new
    @doctor = Doctor.new
  end
  
 def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
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
    @doctor = Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      redirect_to doctors_path
    else
      render :edit
    end
  end
  
 def destroy
    @doctor.destroy
    redirect_to doctors_path
  end
  
 private
  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :specialty)
  end
  
 def set_doctor
    @doctor = Doctor.find(params[:id])
  end
 end
 
