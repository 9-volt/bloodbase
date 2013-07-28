class HomeController < ApplicationController
  def index
    @blood_requests = BloodRequest.all
  end

  def faq; end
  def centre; end
end
