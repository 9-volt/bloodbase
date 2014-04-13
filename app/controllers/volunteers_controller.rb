class Volunteers < ApplicationController
  def new
  end

  def index
    @volunteers = Volunteer.all
  end

  def create
    @volunteer = Volunteer.new volunteer_params

    if @volunteer.save
      @volunteer.shortlink.save
      AdminNotifierMailer.notify_moderators(@volunteer, request.base_url)
                         .deliver unless Rails.env.development?
      redirect_to @volunteer.link
    else
      flash.now[:error] = @volunteer.errors.full_messages.join('<br />')
                                               .html_safe
      render 'new'
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit!
  end
end
