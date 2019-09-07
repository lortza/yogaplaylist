# frozen_string_literal: true

class PosesController < ApplicationController
  before_action :set_pose, only: %i[show edit update destroy]

  def index
    @poses = Pose.all
  end

  def show
  end

  def new
    @pose = Pose.new
  end

  def edit
  end

  def create
    @pose = Pose.new(pose_params)

    if @pose.save
      redirect_to @pose, notice: 'Pose was successfully created.'
    else
      render :new
    end
  end

  def update
    if @pose.update(pose_params)
      redirect_to @pose, notice: 'Pose was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pose.destroy
    respond_to do |format|
      redirect_to poses_url, notice: 'Pose was successfully destroyed.'
    end
  end

  private

  def set_pose
    @pose = Pose.find(params[:id])
  end

  def pose_params
    params.require(:pose).permit(:name, :audio_file, :image_file)
  end
end
