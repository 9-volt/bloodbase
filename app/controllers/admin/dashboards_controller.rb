class Admin::DashboardsController < Admin::BaseController

  def index
    @users = User.all
  end
end
