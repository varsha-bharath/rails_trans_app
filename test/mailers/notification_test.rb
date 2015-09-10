require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "add_driver" do
    mail = Notification.add_driver
    assert_equal "Add driver", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
