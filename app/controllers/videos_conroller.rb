class VideosController < ApplicationController

  def show
    @video = Video.all
  end

end