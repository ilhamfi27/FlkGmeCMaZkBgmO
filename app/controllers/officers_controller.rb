class OfficersController < ApplicationController
  skip_before_action :user_has_signed_in
  before_action :all_patients, :all_doctors, :all_polyclinics, :all_medicines, only: [:index]
  
  def index; end

  def new
    @officer = User.new
  end

  def create    
    @officer = User.new(new_officer_params)
    @officer.password = "officer123"
    @officer.level = "officer"
    @officer.avatar = File.open(File.join(Rails.root, "public", "avatar.png"))
    if @officer.save
      redirect_to new_officer_path, notice: 'Officer was successfully created.'
    else
      render :new
    end
  end
  
  private
    def all_patients
      @patients = Patient.all
    end
    
    def all_doctors
      @doctors = Doctor.all
    end
    
    def all_polyclinics
      @polyclinics = Polyclinic.all
    end
    
    def all_medicines
      @medicines = Medicine.all
    end

    def new_officer_params
     params.require(:user).permit(:username, :first_name, :last_name, :avatar, :level)
    end
end
