require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contact_form" do
    @expected.subject = 'ContactMailer#contact_form'
    @expected.body    = read_fixture('contact_form')
    @expected.date    = Time.now

    assert_equal @expected.encoded, ContactMailer.create_contact_form(@expected.date).encoded
  end

end
