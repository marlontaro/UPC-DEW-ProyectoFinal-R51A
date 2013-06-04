class Concert < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  belongs_to :group
  attr_accessible :date, :end_time, :start_time, :state,:user_id, :place_id, :group_id
end
