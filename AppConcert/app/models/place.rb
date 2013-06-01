class Place < ActiveRecord::Base
  attr_accessible :address, :image, :latitude, :longitude, :name, :phone, :district_id
  belongs_to :district
end
