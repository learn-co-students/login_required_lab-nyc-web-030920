class SecretsController < ApplicationController
  before_action :verify_login

  def show
    render :show
  end

  def verify_login
    if !current_user
      puts "No current user"
      redirect_to root_path
    end
  end
end