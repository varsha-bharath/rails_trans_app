require 'test_helper'

class NoticeTest < ActionMailer::TestCase
  test "add_route" do
    mail = Notice.add_route
    assert_equal "Add route", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
