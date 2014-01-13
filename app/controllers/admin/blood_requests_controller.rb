class Admin::BloodRequestsController < Admin::BaseController

  def index
    @blood_requests = BloodRequest.all.unscoped
  end

  def show
    @blood_request = BloodRequest.unscoped.find_by(:id => params[:id])
  end

  def approve
    @blood_request = BloodRequest.unscoped.find_by(:id => params[:id])
    @blood_request.approve!

    redirect_to admin_blood_request_path(@blood_request)
  end

  def disapprove
    @blood_request = BloodRequest.unscoped.find_by(:id => params[:id])
    @blood_request.disapprove!

    redirect_to admin_blood_request_path(@blood_request)
  end

  def destroy
    pp 'hui'
    @blood_request = BloodRequest.unscoped.find_by(:id => params[:id])
    @blood_request.destroy!

    flash.now[:notice] = 'Cerere a fost distrusă'
    redirect_to admin_blood_requests_path
  end
end
