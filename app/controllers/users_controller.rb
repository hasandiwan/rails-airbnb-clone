class UsersController < ApplicationController

  def profile

  end

  def show
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_params)
    redirect_to user_path
  end

private

  def user_params
    params.require(:user).permit(:first_name, :first_name,
                                       :street_address, :city,
                                       :zipcode, :phone, :about,
                                       :reviews_attributes => [:content, :rating])
  end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  #   @user.update(user_params)

  #   redirect_to user_path(@user)
  # end

end
