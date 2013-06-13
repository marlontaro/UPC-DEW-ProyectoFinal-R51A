class SessionsController < ApplicationController
  def new
      #redirect_to search_url
  end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_to search_url, :notice => "Ingreso!"
    else
      flash.now.alert = "Correo o Contrasenia invalida"
      redirect_back_or_to root_url , :alert => "Correo o Contrasenia invalida"
      
      #render 'login'
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Se desconecto"
  end
end
