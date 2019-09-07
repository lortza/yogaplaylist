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

    respond_to do |format|
      if @pose.save
        format.html { redirect_to @pose, notice: 'Pose was successfully created.' }
        format.json { render :show, status: :created, location: @pose }
      else
        format.html { render :new }
        format.json { render json: @pose.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pose.update(pose_params)
        format.html { redirect_to @pose, notice: 'Pose was successfully updated.' }
        format.json { render :show, status: :ok, location: @pose }
      else
        format.html { render :edit }
        format.json { render json: @pose.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pose.destroy
    respond_to do |format|
      format.html { redirect_to poses_url, notice: 'Pose was successfully destroyed.' }
      format.json { head :no_content }
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
