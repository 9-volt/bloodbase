class Admin::BaseController < ApplicationController
  before_filter :check_admin!
  layout "layouts/admin/application"

end
