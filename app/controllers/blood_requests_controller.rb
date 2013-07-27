class BloodRequestsController < ApplicationController
  def new
    @blood_request = BloodRequest.new
  end

  def create
    @blood_request = BloodRequest.new req_params

    if @blood_request.save
      redirect_to blood_request_path(@blood_request)
    else
      flash.now[:error] = @blood_request.errors.full_messages.join('<br />')
                                               .html_safe
      render 'new'
    end
  end

  private

    def req_params
      params.require(:blood_request)
            .permit(:person_name, :description, :contacts, :photo)
    end
end
