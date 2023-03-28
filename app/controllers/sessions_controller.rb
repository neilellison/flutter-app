class SessionsController < ApplicationController
  def new
    @session = Session.new
    render :show
  end
  def create
    user = User.find_by(name: params[:name])
    if user.present?
        session[:user_id] = user.id
        redirect_to users_path
      else
        render 'new'
      end
  end

  def destroy
    session.delete :username
    redirect_to '/sessions/new'
  end  

end
