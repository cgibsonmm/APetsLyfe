class AllPetsController < ApplicationController
  def index
    @pets = Post.all
  end
end
