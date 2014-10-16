class CategoriesController < ApplicationController

  def show
    @videos = Category.videos.all
    @category = Category.find(params[:id])
  end
end