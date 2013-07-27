class QuestionnaireController < ApplicationController
  def index; end

  def next_item
    pp params
    render :partial => "chestionar/q#{params[:next_id]}"
  end
end
