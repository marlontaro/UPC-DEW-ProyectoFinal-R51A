class District < ActiveRecord::Base
  attr_accessible :name
 
    validates :name, :presence => { :message => ": Nombre es obligatorio" }
end
