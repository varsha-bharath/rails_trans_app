class Notice < ActionMailer::Base
  default from: "bhargavkadivar@gmail.com"

  def add_route(route,user)
   @route = route

    mail to: "#{user.email}", subject: "thanks!"
  end
end

