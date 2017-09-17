class UserMailer < ActionMailer::Base
  default :from => "TechTestBertie@Vzarr.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome!")
  end
end
