class PolyclinicsController < ApplicationController
  skip_before_action :user_has_signed_in
  before_action :set_polyclinic, only: [:edit, :update, :destroy]
  
  def index
    @polyclinics = Polyclinic.all
  end
  
  def new
    @polyclinic = Polyclinic.new
  end
  
  def create
    @polyclinic = Polyclinic.new(polyclinic_params)
    if @polyclinic.save
      redirect_to new_polyclinic_path(@polyclinic), notice: 'Polyclinic was successfully created.'
    else
      render :new
    end
  end
  
  def edit; end
  
  def update
    if @polyclinic.update(polyclinic_params)
      redirect_to polyclinics_path, notice: 'Polyclinic was successfully updated.'
    else
      render :edit
    end
  end
  
  def destroy
    @polyclinic.destroy
    redirect_to polyclinics_path, notice: 'Polyclinic was successfully destroyed.'
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def polyclinic_params
      params.require(:polyclinic).permit(:name)
    end
    
    def set_polyclinic
      @polyclinic = Polyclinic.find(params[:id])
    end
end
