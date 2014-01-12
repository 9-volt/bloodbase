class BloodMailer < ActionMailer::Base
  default from: "donezsangeeu@gmail.com"

  def case_submit_email (blood_request, donation, host_uri)
    @blood_request = blood_request
    @donation      = donation
    @host_uri      = host_uri

    mail :to      => blood_request.email,
         :subject => 'O persoana s-a inregistrat sa doneze pentru cazul dumneavoastra'
  end
end
