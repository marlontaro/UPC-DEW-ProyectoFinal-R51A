class Assitance < ActiveRecord::Base
  belongs_to :concert
  belongs_to :user
  # attr_accessible :title, :body
end
