class SittersController < ApplicationController
  def index
    @users = if params[:term]
      User.find_by_address(params[:term])
    # @user_coordinates = { lat: @sitter.user.latitude, lng: @sitter.user.longitude }
    else
      User.joins(:sitter)
    end

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
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
