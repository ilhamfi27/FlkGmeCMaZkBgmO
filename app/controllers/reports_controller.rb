class ReportsController < ApplicationController
  skip_before_action :user_has_signed_in

  def index; end
end
