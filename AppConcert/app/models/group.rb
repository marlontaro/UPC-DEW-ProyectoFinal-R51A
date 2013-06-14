class Group < ActiveRecord::Base
  belongs_to :style
  attr_accessible :name, :image, :style_id, :user_tokens, :photo

  has_many :members
  has_many :users, :through => :members

  attr_reader :user_tokens
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
 
  FOTOS = File.join Rails.root,'public','photo_store'

  after_save :guardar_foto

  def photo=(file_data)
  	unless file_data.blank?
  		@file_data = file_data
  		self.image = file_data.original_filename.split('.').last.downcase
  	end
  end 


  def photo_filename
  	File.join FOTOS, "group#{id}.#{image}"
  end 

  def photo_path
  	"/photo_store/group#{id}.#{image}"
  end 

  def has_photo?
  	File.exists? photo_filename
  end 

  private 
  
  def guardar_foto
  	if @file_data
  		FileUtils.mkdir_p FOTOS
  		 
  		File.open(photo_filename,"wb") do |f|
  			f.write(@file_data.read)
  		end
  		@file_data = nil
  	end
  end

end