class ShortlinksController < ApplicationController
  def show
    @blood_request = Shortlink.find_by(:code => params[:code]).blood_request
  end
end
