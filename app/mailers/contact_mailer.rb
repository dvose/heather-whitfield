class ContactMailer < ActionMailer::Base
  default from: "heatherwhitfield550@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.wedding_mailer.rsvp_confirmation.subject
  #
  def send_contact(contact)
    @contact = contact

    mail to: "heatherwhitfield550@gmail.com", subject: "[Personal Website] Contact From " + @contact.name
  end
end
