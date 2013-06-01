class Place < ActiveRecord::Base
  attr_accessible :address, :district_id, :imagen, :latitude, :longitud, :name, :phone
  validates :district_id, :name, :address, :phone, :presence => true
  validates_numericality_of :latitude, :longitud
  belongs_to :district
end
