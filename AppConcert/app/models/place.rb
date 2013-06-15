class Place < ActiveRecord::Base
  attr_accessible :address, :gmaps, :image, :latitude, :longitude, :name, :phone, :district_id

  belongs_to :district
  validates :name, :address, :phone, :district_id,  :presence => true

  acts_as_gmappable

  def gmaps4rails_address
    address
  end

  def gmaps4rails_infowindow
    "<b>#{name}</b><br>Direccion:#{address}<br>"
  end

  def gmaps4rails_marker_picture
    {
        "picture" => "/assets/guitaricon32.png",
        "width"   => 32,
        "height"  => 32
    }
  end

  def gmaps4rails_sidebar
    name
  end

end
