class PostsController < ApplicationController
 before_action :authenticate_user!
 before_action :find_user

  def index
    @posts = current_user.posts.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post Created"
      redirect_to([current_user, @post])
    else
      flash[:error] = 'Error creating post'
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

    private

    def post_params
      params.require(:post).permit(:image, :caption)
    end

    def find_user
      @user = current_user
    end
end
