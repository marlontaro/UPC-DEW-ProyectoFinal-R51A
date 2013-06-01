class MusicalGroup < ActiveRecord::Base
  attr_accessible :imagen, :musical_style_id, :name
  validates :musical_style_id, :name, :presence => true
  belongs_to :musical_style
end
