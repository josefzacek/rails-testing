class ContactUsMessagesController < ApplicationController
  def new
    @message = ContactUsMessage.new
  end

  def create
    @message = ContactUsMessage.new(message_params)

    if @message.valid?
      ContactUsMessageMailer.contact_us_message(@message).deliver_now
      redirect_to new_contact_us_message_path, notice: "Thank you for your message."
    else
      render :new
    end
  end

  private
    def message_params
      params.require(:contact_us_message).permit(:name, :email, :subject, :content)
    end 
end
