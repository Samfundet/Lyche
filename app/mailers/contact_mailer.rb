class ContactMailer < ActionMailer::Base
  default from: "no-reply@samfundet.no"
  default to: "mg-websjef@samfundet.no"

  def new_message(message)
      @message = message
      @sent = DateTime.now.strftime("%Y-%m-%d %H:%M")

      mail(subject: "Henvendelse fra lyche.samfundet.no (#{@sent})")
  end
end
