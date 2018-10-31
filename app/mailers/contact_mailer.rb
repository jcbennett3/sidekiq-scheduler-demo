class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  CONTACT_EMAIL = 'bennettjc1978@gmail.com'

  def submission(message)
    @message = message
    mail(to: CONTACT_EMAIL, subject: 'New contact page submission')
  end
end
