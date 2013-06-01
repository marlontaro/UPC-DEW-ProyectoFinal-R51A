class User < ActiveRecord::Base
  attr_accessible :document_number, :document_type, :email, :foursquare_token, :lastname, :name, :password, :sex, :type
  has_many :groups
end
