class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/sessions/'
    end
  end

  def destroy
    session.delete(:name)
    redirect_to '/login'
  end
end
