class Group < ActiveRecord::Base
  belongs_to :style
  attr_accessible :image, :name, :style_id, :user_tokens

  has_many :members
  has_many :users, :through => :members
  attr_reader :user_tokens
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end

end
