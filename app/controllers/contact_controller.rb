class ContactController < ApplicationController

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      ContactMailer.new_message(@message).deliver
      redirect_to(contact_path, notice: "Henvendelsen din ble sendt til Lyche.")
    else
      flash.now.alert = "Vennligst fyll ut alle feltene."
      render 'pages/contact'
    end
  end
end
