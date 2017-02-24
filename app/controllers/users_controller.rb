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

    @review = Review.new

    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
        # marker.infowindow render_to_string(partial: "/users/map_box", locals: { user: user })
    end
  end

  def edit
    @sitter = Sitter.new
  end

  def update
    @user = current_user

    @user.update(user_params)

    redirect_to @user
  end

  def destroy_sitter
    current_user.sitter.destroy

    redirect_to current_user
  end

  def index
      @users = User.where.not(latitude: nil, longitude: nil)

      @hash = Gmaps4rails.build_markers(@users) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
        # marker.infowindow render_to_string(partial: "/users/map_box", locals: { user: user })
      end
    end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name,
                                       :street_address, :city,
                                       :zipcode, :phone, :about,
                                       :photo, :photo_cache,
                                       :reviews_attributes => [:content, :rating],
                                       :sitter_attributes => [:type, :fare, :missions, pet_type_ids: []])

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
