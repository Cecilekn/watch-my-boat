require 'test_helper'

class BookingMailerTest < ActionMailer::TestCase
  test "monthly_visit" do
    mail = BookingMailer.monthly_visit
    assert_equal "Monthly_visit", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
