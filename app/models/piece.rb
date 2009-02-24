class Piece < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, :styles => { :original => "x448>", :thumb => "100x100>" }
  acts_as_list :scope => :category
  
  validates_presence_of :title
  validates_presence_of :client_name
  validates_attachment_presence :image
  
end
