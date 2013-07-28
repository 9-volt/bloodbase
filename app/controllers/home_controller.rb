class HomeController < ApplicationController
  def index
    @blood_requests = BloodRequest.last(3).reverse
  end

  def faq; end
  def centre; end
end
