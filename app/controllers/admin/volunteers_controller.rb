class Admin::VolunteersController < Admin::BaseController
  before_filter :volunteer

  def index
    @volunteers = Volunteer.all.unscoped
  end

  def show
  end

  def update
    @volunteer.update_attributes!(permitted_params)

    redirect_to admin_volunteer_path(@volunteer)
  end

  def edit
  end

private
  def permitted_params
    params.require(:volunteer).permit!
  end

  def volunteer
    @volunteer = Volunteer.find_by(:id => params[:id])
  end
end
