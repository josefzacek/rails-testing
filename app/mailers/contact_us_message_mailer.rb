class ContactUsMessageMailer < ApplicationMailer
  default to: 'joezacek@gmail.com'

  def contact_us_message(message)
    @message = message

    mail from: 'Test contact page <some@email.com>', subject: 'Contact form'
  end
end
