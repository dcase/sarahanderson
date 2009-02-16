class Contact < ActiveRecord::Base
  validates_presence_of :name, :message
  validates_presence_of :email, :if => Proc.new{ |u| u.phone.blank? }
  validates_presence_of :phone, :if => Proc.new{ |u| u.email.blank? }
end
