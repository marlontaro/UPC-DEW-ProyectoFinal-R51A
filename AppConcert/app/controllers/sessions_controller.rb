class SessionsController < ApplicationController
  def new
      #redirect_to search_url
  end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_to search_url, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid"
      redirect_back_or_to root_url , :alert => "Email or password was invalid"
      
      #render 'login'
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
