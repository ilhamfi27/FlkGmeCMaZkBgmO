class AddAmountOfMedicinesColumnOnDetailsTable < ActiveRecord::Migration
  def change
  	add_column :details, :amount_of_medicine, :integer, limit: 4
  end
end
