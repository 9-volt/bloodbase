class Admin::BloodRequestsController < Admin::BaseController
  before_filter :blood_request

  def index
    @blood_requests = BloodRequest.all.unscoped
  end

  def show
  end

  def update
    @blood_request.update_attributes!(permitted_params)
    redirect_to admin_blood_request_path(@blood_request)
  end

  def edit
    @hospitals_groups = Utils::HOSPITALS_GROUPS
  end

  def approve
    @blood_request.approve!
    redirect_to admin_blood_request_path(@blood_request)
  end

  def disapprove
    @blood_request.disapprove!
    redirect_to admin_blood_request_path(@blood_request)
  end

  def archive
    @blood_request.archive!
    redirect_to admin_blood_request_path(@blood_request)
  end

  def unarchive
    @blood_request.unarchive!
    redirect_to admin_blood_request_path(@blood_request)
  end

  def destroy
    @blood_request.destroy!
    flash.now[:notice] = 'Cerere a fost distrusă'
    redirect_to admin_blood_requests_path
  end

private
  def permitted_params
    params.require(:blood_request).permit!
  end

  def blood_request
    @blood_request = BloodRequest.unscoped.find_by(:id => params[:id])
  end
end
