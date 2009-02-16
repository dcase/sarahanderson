class Category < ActiveRecord::Base
  acts_as_nested_set
  has_one :rollover, :dependent => :destroy
  has_many :pieces, :order => :position
  
  validates_presence_of :name

end
