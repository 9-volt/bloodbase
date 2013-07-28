class BloodMailer < ActionMailer::Base
  default from: "donezsangeeu@gmail.com"

  def case_submit_email (blood_request, donation, host_uri)
    @blood_request = blood_request
    @donation = donation
    @host_uri = host_uri

    subject = 'O persoana s-a inregistrat sa doneze pentru cazul dumneavoastra'
    mail :to => blood_request.email, :subject => subject
  end
end
