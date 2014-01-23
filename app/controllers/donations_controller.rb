class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new donation_params
    if @donation.save
      redirect_to donation_path(@donation)
    else
      flash.now[:error] = @donation.errors.full_messages.join('<br />')
                                          .html_safe
      render 'new'
    end
  end

  def show
    @donation = Donation.find(params[:id])
  end

  private

    def donation_params
      params.require(:donation)
            .permit(:type2, :full_name, :gender, :birthdate, :blood_group, :blood_rh,
                    :phone, :email, :id_number, :donate_at)
    end
end
