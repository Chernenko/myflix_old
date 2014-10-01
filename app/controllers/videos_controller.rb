class VideosController < ApplicationController
  before_action :set_video, only: [:show]
  def index
    @video = Video.all
    end

  def show

  end
  def set_video
    @video = Video.find(params[:id])

  end
end