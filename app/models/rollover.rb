class Rollover < ActiveRecord::Base
  has_attached_file :active
  has_attached_file :over
  has_attached_file :inactive
  
  belongs_to :category
  validates_attachment_presence :active
  validates_attachment_presence :inactive
  validates_attachment_presence :over
  
end
