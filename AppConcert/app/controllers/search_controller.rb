class SearchController < ApplicationController
  def new
   
  		# @concerts = Concert.find(:all, :conditions => ['name like ?',"%#{params[:search]}%"])

      if(params[:fecha])
         
         event = params[:fecha]
          fecha = Date.new event["Fecha(1i)"].to_i, event["Fecha(2i)"].to_i, event["Fecha(3i)"].to_i

    		@concerts = Concert.joins(:group => :style, :place => :district).where(
  			"groups.name like ? and styles.name like ? and districts.name like ? and date(concerts.date) = ? ",
  			"%#{params[:search]}%","%#{params[:estilo]}%","%#{params[:distrito]}%", fecha)
  				 
      else
        @concerts = Concert.where("date(concerts.date) = ?", DateTime.now.to_date )
      
      end 	 
  end

  def index
  		# @concerts = Concert.all
  end 
end
