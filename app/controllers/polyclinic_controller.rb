class PolyclinicController < ApplicationController
  def index; end
  
  def show
    
  end
  
  def new
    @polyclinic = Polyclinic.new
  end
  
  def create
    @polyclinic = Polyclinic.new(polyclinic_params)
    if @polyclinic.save
      redirect_to dashboards_path, notice: 'Polyclinic was successfully created.'
    else
      render :new
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def polyclinic_params
      params.require(:polyclinic).permit(:NamaPlk, :created_at, :updated_at)
    end
end
