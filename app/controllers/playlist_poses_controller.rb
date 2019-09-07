# frozen_string_literal: true

class PlaylistPosesController < ApplicationController
  before_action :set_playlist_pose, only: [:show, :edit, :update, :destroy]

  # GET /playlist_poses
  # GET /playlist_poses.json
  def index
    @playlist_poses = PlaylistPose.all
  end

  # GET /playlist_poses/1
  # GET /playlist_poses/1.json
  def show
  end

  # GET /playlist_poses/new
  def new
    @playlist_pose = PlaylistPose.new
  end

  # GET /playlist_poses/1/edit
  def edit
  end

  # POST /playlist_poses
  # POST /playlist_poses.json
  def create
    @playlist_pose = PlaylistPose.new(playlist_pose_params)

    respond_to do |format|
      if @playlist_pose.save
        format.html { redirect_to @playlist_pose, notice: 'Playlist pose was successfully created.' }
        format.json { render :show, status: :created, location: @playlist_pose }
      else
        format.html { render :new }
        format.json { render json: @playlist_pose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlist_poses/1
  # PATCH/PUT /playlist_poses/1.json
  def update
    respond_to do |format|
      if @playlist_pose.update(playlist_pose_params)
        format.html { redirect_to @playlist_pose, notice: 'Playlist pose was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist_pose }
      else
        format.html { render :edit }
        format.json { render json: @playlist_pose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlist_poses/1
  # DELETE /playlist_poses/1.json
  def destroy
    @playlist_pose.destroy
    respond_to do |format|
      format.html { redirect_to playlist_poses_url, notice: 'Playlist pose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_pose
      @playlist_pose = PlaylistPose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_pose_params
      params.require(:playlist_pose).permit(:sequence_number, :playlist_id, :pose_id)
    end
end
