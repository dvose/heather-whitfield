class ContactMailer < ActionMailer::Base
  default from: "heatherwhitfield550@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.wedding_mailer.rsvp_confirmation.subject
  #
  def send_contact(contact)
    @contact = contact

    mail to: "dtnvose@gmail.com", subject: "[Heather Resume] Contact From " + @contact.name
  end
end
