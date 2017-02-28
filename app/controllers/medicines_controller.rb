class MedicinesController < ApplicationController
  skip_before_action :user_has_signed_in
  before_action :set_medicine, only: [:edit, :update, :destroy]
  
  def index
    @medicines = Medicine.all
  end
  
  def new
    @medicine = Medicine.new
  end
  
  def create
    @medicine = Medicine.new(medicine_params)
    if @medicine.save
      redirect_to new_medicine_path(@medicine), notice: 'Medicine was successfully created.'
    else
      render :new
    end
  end
  
  def edit; end
  
  def update
    if @medicine.update(medicine_params)
      redirect_to medicines_path, notice: 'Medicine was successfully updated.'
    else
      render :edit
    end
  end
  
  def destroy
    @medicine.destroy
    redirect_to medicines_path, notice: 'Medicine was successfully destroyed.'
  end
  
  private
    def medicine_params
      params.require(:medicine).permit(:name, :types_of_medicine, :category, :price, :amount)
    end
    
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end
end
