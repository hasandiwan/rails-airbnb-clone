class SittersController < ApplicationController
  def index
    @sitters = Sitter.all
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
end
