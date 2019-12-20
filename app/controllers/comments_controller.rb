class CommentsController < ApplicationController
  before_action :find_post

  def create
    @reply = @post.comments.build(comment_params)
    @reply.user_id = current_user.id
    @reply.save
    redirect_to @post
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:reply)
  end
end
