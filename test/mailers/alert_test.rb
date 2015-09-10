require 'test_helper'

class AlertTest < ActionMailer::TestCase
  test "add_client" do
    mail = Alert.add_client
    assert_equal "Add client", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
