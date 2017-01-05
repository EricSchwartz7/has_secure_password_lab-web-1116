 require 'pry'

class SessionsController < ApplicationController

def new
  # this is where you would direct to a login page

end

def create
  @user = User.find_by(name: params[:user][:name])
  # if the name and password are authenticated

#  binding.pry
  if @user && @user.authenticate(params[:user][:password])
    # set the session id
    session[:user_id] = @user.id
    # redirect to
    redirect_to new_user_path
  else

    flash[:notice] = 'Username or password was incorrect.'
    redirect_to new_user_path

  end
end#
# def destroy
#
#   session[:name] = nil
#   redirect_to login_path
#
# end


end
