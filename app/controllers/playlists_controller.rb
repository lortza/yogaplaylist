# frozen_string_literal: true

class PlaylistsController < ApplicationController
  before_action :set_playlist, only: %i[show edit update destroy]

  def index
    @playlists = current_user.playlists.order(:name)
  end

  def show
  end

  def new
    @playlist = current_user.playlists.new
    15.times { @playlist.playlist_poses.build }
  end

  def edit
    3.times { @playlist.playlist_poses.build }
  end

  def create
    @playlist = current_user.playlists.new(playlist_params)

    if @playlist.save
      redirect_to @playlist, notice: 'Playlist was successfully created.'
    else
      render :new
    end
  end

  def update
    if @playlist.update(playlist_params)
      redirect_to @playlist, notice: 'Playlist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @playlist.destroy
    redirect_to playlists_url, notice: 'Playlist was successfully destroyed.'
  end

  private

  def set_playlist
    @playlist = current_user.playlists.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:name,
                                     :hold_time,
                                     :user_id,
                                     playlist_poses_attributes: %i[
                                       id
                                       sequence_number
                                       pose_id
                                       _destroy
                                     ])
  end
end
