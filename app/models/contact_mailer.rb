class ContactMailer < ActionMailer::Base
  
  def contact_form(contact)
    subject    'contact from sarahandersondesign.com'
    recipients 'sarah@sarahandersondesign.com'
    from       'sarahandersondesign.com <sarah@sarahandersondesign.com>'
    sent_on    Time.now
    
    body       :contact => contact
  end

end
