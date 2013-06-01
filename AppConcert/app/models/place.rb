class Place < ActiveRecord::Base
  attr_accessible :address, :image, :latitude, :longitude, :name, :phone
  belongs_to :district
end
