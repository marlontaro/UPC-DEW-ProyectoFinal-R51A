class District < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  #validates_presence_of :name

end
