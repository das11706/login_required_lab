class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def show  
  end

  private

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/sessions/new' 
    end
  end

end
