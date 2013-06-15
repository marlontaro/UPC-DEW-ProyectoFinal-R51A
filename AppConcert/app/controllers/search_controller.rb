class SearchController < ApplicationController
  def new
   
  		@concerts = Concert.find(:all, :conditions => ['name like ?',"%#{params[:search]}%"])
  	 
  end

  def index
  		# @concerts = Concert.all
  end 
end
