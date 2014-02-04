class BloodRequestsController < ApplicationController
  def new
    @blood_request = BloodRequest.new
    @blood_request.persons_required = 5
    @hospitals_groups = Utils::HOSPITALS_GROUPS
  end

  def index
    @blood_requests = BloodRequest.all
  end

  def create
    @blood_request = BloodRequest.new br_params

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

    def br_params
      params.require(:blood_request).permit!
    end
end
