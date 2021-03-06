class Api::V1::PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def return_playlist
    @user = User.find(params[:id])

    render json: @user.media
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.valid?
      @playlist.save
      render json: @playlist
    else
      render json: {errors: @playlist.errors.full_messages}, status: 500
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    if @playlist.save
      render json: @playlist
    else
      render json: {errors: @playlist.errors.full_messages}, status: 422
    end
  end

  def destroy
    @playlist = Playlist.find_by(user_id: params[:user_id], medium_id: params[:medium_id])
    @playlist.destroy
  end

  private
  def playlist_params
    params.require(:playlist).permit(:user_id, :medium_id)
  end

end
