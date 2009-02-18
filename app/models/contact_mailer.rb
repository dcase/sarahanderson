class ContactMailer < ActionMailer::Base
  
  def contact_form(contact)
    subject    'contact from sarahandersondesign.com'
    recipients 'info@sarahandersondesign.com'
    from       'sarahandersondesign.com <info@sarahandersondesign.com>'
    sent_on    Time.now
    
    body       :contact => contact
  end

end
