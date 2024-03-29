class NotificationsMailer < ActionMailer::Base

  default :from => "mailer@upperlane.com"
  default :to => "peter@upperlane.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Habit Message] #{message.email}")
  end

end