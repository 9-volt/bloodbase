class CaseDonationsController < DonationsController
  before_filter :fetch_blood_request

  def new
    @donation = @card.donations.new
  end

  def create
    @donation = @card.donations.new donation_params
    if @donation.save
      BloodMailer.case_submit_email(@card, @donation, request.base_url)
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
    @card = Card.find(params[:card_id])
  end
end
