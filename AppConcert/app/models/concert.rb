class Concert < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  belongs_to :group
  attr_accessible :date, :end_time, :start_time, :state,:user_id, :place_id, :group_id

  validates :date, :end_time, :start_time, :user_id, :place_id, :group_id, :presence => true

  acts_as_gmappable

  def gmaps4rails_infowindow
    "<b>#{place.name}</b><br>#{place.address}<br><img src='/assets/#{place_id}.png' height='100' width='100%'>"
  end

  def gmaps4rails_marker_picture
    {
        "picture" => "/assets/pin24.png",
        "width"   => 32,
        "height"  => 32
    }
  end

  #def gmaps4rails_sidebar
  #  name
  #end


end
