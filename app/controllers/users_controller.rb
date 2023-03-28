class UsersController < ApplicationController
  def index
    @users = User.all
    # render :index
  end  

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create 
    if password_match?
      @user = User.new(user_params)
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def password_match?
    params[:user][:password] == params[:user][:password_confirmation]
  end
end
