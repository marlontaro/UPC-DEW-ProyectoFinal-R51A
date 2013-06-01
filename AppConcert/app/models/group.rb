class Group < ActiveRecord::Base
  belongs_to :style
  attr_accessible :image, :name
end
