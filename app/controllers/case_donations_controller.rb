class CaseDonationsController < DonationsController
  before_filter :fetch_blood_request

  def new
    @donation = @blood_request.donations.new
  end

  def create
    @donation = @blood_request.donations.new donation_params
    if @donation.save
      BloodMailer.case_submit_email(@blood_request, @donation, request.base_url)
                 .deliver
      redirect_to donation_path(@donation)
    else
      flash.now[:error] = @donation.errors.full_messages.join('<br />')
                                          .html_safe
      render 'new'
    end
  end

  private

    def fetch_blood_request
      @blood_request = BloodRequest.find(params[:blood_request_id])
    end
end
