class LandingPageController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :all_polyclinics, only:[:index]
  def index; end

  private
  	def all_polyclinics
  		@polyclinics = Polyclinic.all
  	end
end
