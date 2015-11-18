require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "expiration_email" do
    mail = Notification.expiration_email
    assert_equal "Expiration email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
