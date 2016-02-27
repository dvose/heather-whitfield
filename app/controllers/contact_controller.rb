class ContactController < ApplicationController
  
  def index
  end
  
  def send_contact
    @contact_params = contact_params
    
     contact = Contact.new(contact_params)
     ContactMailer.send_contact(contact).deliver
    
    render :json => {status: "success", message: 'Your message has been sent!'}
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :company, :message)
  end

end
