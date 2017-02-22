class SittersController < ApplicationController
  def index
    @users = User.all
    @sitters = if params[:term]
    Sitter.joins(:user).merge(User.where('street_address LIKE ?', "%#{params[:term]}%"))
  else
    Sitter.all
  end
  end

  def create
    @sitter = Sitter.new(sitter_params)
    @sitter.user = current_user
    if @sitter.save
      redirect_to user_path(current_user)
    else
      render 'users/show'
    end
  end

  private
  def sitter_params
    params.require(:sitter).permit(:pet_type, :pet_size, :fare, :term)
  end
end
