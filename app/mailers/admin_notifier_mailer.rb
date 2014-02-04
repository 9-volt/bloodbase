class AdminNotifierMailer < ActionMailer::Base
  default from: "donezsangeeu@gmail.com"
  default to: Proc.new { User.pluck(:email) }

  def notify_moderators (blood_request, host_uri)
    @blood_request = blood_request
    @host_uri      = host_uri

    mail :subject => 'A aparut o noua cerere'
  end
end
