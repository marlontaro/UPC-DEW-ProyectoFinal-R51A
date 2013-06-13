class User < ActiveRecord::Base  
  authenticates_with_sorcery!

  attr_accessible :email, :password, :password_confirmation, :name, :lastname, :document, :typeuser_id, :typedocument_id, :sexes_id

  belongs_to :typedocument
  belongs_to :typeuser
  belongs_to :sex

  

  validates_presence_of :typeuser_id  
  validates_presence_of :name 
  validates_presence_of :lastname

  validates_presence_of :sexes_id
  validates_presence_of :typeuser_id
  validates_presence_of :document

  validates_presence_of :email
  validates_uniqueness_of :email

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create


  def registration

  end

  def signup
  end 
end