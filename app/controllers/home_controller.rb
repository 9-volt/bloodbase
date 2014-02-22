class HomeController < ApplicationController
  def index
    if cookies[:welcome]
      @show_welcome = false
    else
      cookies[:welcome] = true
      @show_welcome = true
    end
    @blood_requests = BloodRequest.last(4).reverse
  end

  def faq; end

  def terms
  end

  def about
  end
end
