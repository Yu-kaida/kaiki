class StoriesController < ApplicationController
  def index
    @stories = Story.all.page(params[:page]).per(10)
  end
end
