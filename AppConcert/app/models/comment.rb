class Comment < ActiveRecord::Base
  belongs_to :concert
  belongs_to :user
  attr_accessible :comment, :date, :score
end
