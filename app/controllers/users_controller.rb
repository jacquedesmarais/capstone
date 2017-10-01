class UsersController < ApplicationController
  
  def new
    
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'You have an account to track your fish!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end
  
end
