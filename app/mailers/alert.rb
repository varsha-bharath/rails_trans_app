class Alert < ActionMailer::Base
  default from: "bhargavkadivar@gmail.com"

  
  def add_client(client,user)
    @client = client

    mail to: "#{user.email}", subject: "thanks!"
  end
end