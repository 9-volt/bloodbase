class ShortlinksController < ApplicationController
  def show
    @card = Shortlink.find_by(:code => params[:code]).card
  end
end
