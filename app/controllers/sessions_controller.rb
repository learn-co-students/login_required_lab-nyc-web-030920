class SessionsController < ApplicationController
  def new

  end

  def create 
    if !params[:name] || params[:name].empty?
      return redirect_to login_path 
    elsif session[:name] = params[:name]
      redirect_to root_path
    end

    # return redirect_to login_path if !params[:name] || params[:name].empty?
    #   session[:name] = params[:name]
    #   redirect_to root_path

    def destroy
      session.delete(:name)
      redirect_to root_path
    end
  end
end
