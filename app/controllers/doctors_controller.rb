class DoctorsController < ApplicationController
  skip_before_action :user_has_signed_in
  before_action :set_doctor, only: [:edit, :update, :destroy]
  before_action :polyclinic_collections, only: [:new, :edit, :update, :destroy]
  
  def index
    @doctors = Doctor.all
  end
  
  def new
    @doctor = Doctor.new
  end
  
  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to new_doctor_path, notice: 'Doctor was successfully created.'
    else
      render :new
    end
  end
  
  def edit; end
  
  def update
    if @doctor.update(doctor_params)
      redirect_to officers_path, notice: 'Doctor was successfully updated.'
    else
      render :edit
    end
  end
  
  def destroy
    @doctor.destroy
    redirect_to officers_path, notice: 'Doctor was successfully destroyed.'
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.require(:doctor).permit(:name, :specialist, :address, :phone_number, :fee, :polyclinic_id)
    end
    
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end
    
    def polyclinic_collections
      @polyclinics_collections = Polyclinic.all.collect {|i| [i.name, i.id]}
    end
end
