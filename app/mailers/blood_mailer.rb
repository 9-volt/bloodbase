class BloodMailer < ActionMailer::Base
  default from: "donezsangeeu@gmail.com"

  def case_submit_email (blood_request, donation)
    subject = 'O persoana s-a inregistrat sa doneze pentru cazul dumneavoastra'
    mail :to => 'andrei.lisnic@gmail.com', :subject => subject
  end
end
