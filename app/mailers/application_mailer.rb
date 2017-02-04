class ApplicationMailer < ActionMailer::Base
  default from: 'info@mjenzi.com.com',to: "nirojsapkota15@gmail.com" #to: "info@mjenzi.com"
  layout 'mailer'

  def contact_message(user)
    @user = user
    mail(from: user["contact_email"],subject: "Contact message from website form")
  end
end
