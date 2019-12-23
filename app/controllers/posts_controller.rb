class PostsController < ApplicationController
  skip_before_action :hide_navbar
  before_action :authenticate_user!
  before_action :find_post, only: [:show, :destroy]

  def index
    @posts = Post.most_voted
  end

  def show
  end

  def new
    @post = Post.new
    @post.user = current_user
  end

  def create
    @post = current_user.posts.create(post_params)
    
    if @post.save
      flash[:notice] = 'Successfully created Post'
      redirect_to @post
    else
      flash[:alert] = 'Cannot create post'
      render 'new'
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = 'Successfully deleted Post'
    redirect_to posts_path
  end

  private 
  
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id)
  end
end
