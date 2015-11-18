class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.expiration_email.subject
  #
  def expiration_email
    @greeting = "Hi"

    mail to: "karthikdc88@gmail.com"  , subject: "Vehicle is nearing expiration"
  end
end
