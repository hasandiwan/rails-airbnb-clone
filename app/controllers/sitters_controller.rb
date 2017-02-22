class SittersController < ApplicationController
  def index
    @users = User.all
    @sitters = if params[:term]
      User.find_by_address(params[:term])
    # User.near("%#{params[:term]}%", 20) unless User.sitter == nil
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
    params.require(:sitter).permit(:pet_type, :pet_size, :fare)
  end

  # def new
  #   @sitter = current_user.build_sitter
  # end

  # def update
  #   @sitter = current_user
  #   @sitter.update(user_params)

  #   redirect_to user_path
  # end

end
