class ContactMailer < ActionMailer::Base
  
  def contact_form(contact)
    subject    'contact from sarahandersondesign.com'
    recipients 'case_darren@yahoo.com'
    from       'sarahandersondesign.com <sarahandersondesign.com>'
    sent_on    Time.now
    
    body       :contact => contact
  end

end
