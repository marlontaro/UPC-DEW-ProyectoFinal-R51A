class AllController < ApplicationController

  def new
  	 if current_user
      if(params[:fecha])
         
         event = params[:fecha]
          fecha = Date.new event["Fecha(1i)"].to_i, event["Fecha(2i)"].to_i, event["Fecha(3i)"].to_i

    		@concerts = Concert.joins(:group => :style, :place => :district).where(
  			"groups.name like ? and places.name like ? and date(concerts.date) = ? ",
  			"%#{params[:search]}%","%#{params[:local]}%",  fecha)

        
  				 
      else
        @concerts = Concert.joins(:group => :style, :place => :district).where("date(concerts.date) = ?", DateTime.now.to_date )

       
      
      end 	

        else
    
      redirect_back_or_to root_url, :notice => "Inicie sesion!"   
    
    end 
  end

end
