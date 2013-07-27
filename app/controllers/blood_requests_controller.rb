class BloodRequestsController < ApplicationController
  def new
    @blood_request = BloodRequest.new
  end
end
