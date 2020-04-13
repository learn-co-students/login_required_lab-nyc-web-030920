class SessionsController < ApplicationController
  def new
    
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
      # todo: open secrets?
    else
      flash[:error] = "Must provide name"
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name)
  end
end