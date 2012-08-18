class NotificationsMailer < ActionMailer::Base

  default :from => "mailer@upperlane.com"
  default :to => "peter@upperlane.com"

  def new_message(message)
    @message = message
    mail(:subject => "[GetChan Message] #{message.email}")
  end

end