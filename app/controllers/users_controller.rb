require 'pry'

class UsersController < ApplicationController

def new


end


def create
  # if password and password confirmation match
  #binding.pry
  if params[:user][:password] == params[:user][:password_confirmation]
    #create a user
    @user = User.create(params.require(:user).permit(:name, :password))
    session[:user_id] = @user.id
    redirect_to sessions_path
  else
  #  binding.pry
    #don't create a user
    redirect_to new_user_path
  end




end









end
