class UsersController < ApplicationController

  def index
  end

  def new
  end

  def create
  end
  
  def destroy
  end
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    @user = user.name
    @prototype = user.prototypes
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
