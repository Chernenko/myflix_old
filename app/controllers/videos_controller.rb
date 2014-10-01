class VideosController < ApplicationController

  def index
    @video = Video.all
    end

  def show
    #binding.pry
  end

end