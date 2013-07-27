class BloodRequestsController < ApplicationController
  def new
    @blood_request = BloodRequest.new
    @blood_request.persons_required = 5
  end

  def create
    @blood_request = BloodRequest.new req_params

    if @blood_request.save
      @blood_request.shortlink.save
      redirect_to @blood_request.link
    else
      flash.now[:error] = @blood_request.errors.full_messages.join('<br />')
                                               .html_safe
      render 'new'
    end
  end

  private

    def req_params
      params.require(:blood_request)
            .permit(:person_name, :description, :contacts, :photo,
                    :persons_required, :hospital, :section)
    end
end
