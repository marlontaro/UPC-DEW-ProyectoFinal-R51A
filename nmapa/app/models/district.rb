class District < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name


acts_as_gmappable

def gmaps4rails_address
 address
end

  def gmaps4rails_infowindow
    "<b>#{name}</b><br>#{address}<br><img src='/assets/#{id}.png' height='100' width='100%'>"
  end

  def gmaps4rails_marker_picture
  {
       "picture" => "/assets/pin24.png",
       "width"   => 32,
       "height"  => 32
  }
  end

  def gmaps4rails_sidebar
    name
  end

end

