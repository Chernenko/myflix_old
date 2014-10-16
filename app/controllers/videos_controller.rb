class VideosController < ApplicationController
  before_action :set_video, only: [:show]
  before_filter :require_user

  def index
    @video = Video.all
    @categories = Category.all
  end

  def show;end

  def search
    @results = Video.search_by_title(params[:search_term])
  end

  def set_video
    @video = Video.find(params[:id])
  end
end