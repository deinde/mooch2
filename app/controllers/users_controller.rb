class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user, notice: "New account created"
    else
      flash[:alert]= 'There was an error' 
      render :new
    end
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
