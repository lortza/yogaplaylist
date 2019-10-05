# frozen_string_literal: true

class PosesController < ApplicationController
  before_action :set_pose, only: %i[show edit update destroy]
  before_action :require_admin

  def index
    @poses = current_user.poses.all.order(:name)
  end

  def show
  end

  def new
    @pose = current_user.poses.new
  end

  def edit
  end

  def create
    @pose = current_user.poses.new(pose_params)

    if @pose.save
      redirect_to poses_url, notice: 'Pose was successfully created.'
    else
      render :new
    end
  end

  def update
    if @pose.update(pose_params)
      redirect_to poses_url, notice: 'Pose was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pose.destroy
    redirect_to poses_url, notice: 'Pose was successfully destroyed.'
  end

  private

  def set_pose
    @pose = current_user.poses.find(params[:id])
  end

  def pose_params
    params.require(:pose).permit(:name, :audio_file, :image_file, :user_id)
  end
end
