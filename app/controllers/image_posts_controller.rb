class ImagePostsController < ApplicationController
  def index
    @posts = ImagePost.all
  end

  def new
    @post = ImagePost.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end
end
