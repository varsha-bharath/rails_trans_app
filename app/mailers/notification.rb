class Notification < ActionMailer::Base
  default from: "bhargavkadivar@gmail.com"

  
  def add_driver(driver,user)
   @driver = driver
   #email = current_user.email

    mail to: "#{user.email}", subject: "thanks!"
  end
end