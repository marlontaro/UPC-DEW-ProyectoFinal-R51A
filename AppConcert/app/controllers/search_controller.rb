class SearchController < ApplicationController
  def new
   
  		# @concerts = Concert.find(:all, :conditions => ['name like ?',"%#{params[:search]}%"])
 if current_user
      if(params[:fecha])
         
         event = params[:fecha]
          fecha = Date.new event["Fecha(1i)"].to_i, event["Fecha(2i)"].to_i, event["Fecha(3i)"].to_i

    		@concerts = Concert.joins(:group => :style, :place => :district).where(
  			"groups.name like ? and styles.name like ? and districts.name like ? and date(concerts.date) = ? ",
  			"%#{params[:search]}%","%#{params[:estilo]}%","%#{params[:distrito]}%", fecha)

        @lugar=  @concerts.select("DISTINCT places.id ")
  				 
      else
        @concerts = Concert.joins(:group => :style, :place => :district).where("date(concerts.date) = ?", DateTime.now.to_date )

        @lugar=  @concerts.select("DISTINCT places.id ")
      
      end 	

        else
    
      redirect_back_or_to root_url, :notice => "Inicie sesion!"   
    
    end 
     
  end

  def index
  		# @concerts = Concert.all
  end 
end
