class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!
  layout "layouts/admin/application"

end
