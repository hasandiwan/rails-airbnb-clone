class UsersController < ApplicationController

  def create_sitter
    @user = current_user
    @user.build_sitter unless @user.sitter
    @user.save

    redirect_to @user
  end

  # users/:id
  def show
    @user = User.find(params[:id])
    @sitter = @user.sitter
    @sitter ||= Sitter.new(user: current_user) if params[:sitter]
  end

  def edit
    @sitter = Sitter.new
  end

  def update
    @user = current_user

    @user.update(user_params)

    redirect_to @user
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name,
                                       :street_address, :city,
                                       :zipcode, :phone, :email, :about,
                                       :reviews_attributes => [:id, :content, :rating],
                                       :sitter_attributes => [:id, :type, :fare, :missions])
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
