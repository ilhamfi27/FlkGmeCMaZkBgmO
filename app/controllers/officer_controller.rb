class OfficerController < ApplicationController
  skip_before_action :user_has_signed_in
end
