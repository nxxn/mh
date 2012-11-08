class NotificationsMailer < ActionMailer::Base

  default :from => "order@musthave.lv"
  default :to => "order@musthave.lv"

  def new_message(message)
    @message = message
    mail(:subject => "[Contact form]")
  end

end