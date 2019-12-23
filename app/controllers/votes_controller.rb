class VotesController < ApplicationController
  def create
    current_user.upvote(post)

    redirect_back(fallback_location: posts_path)
  end

  private

  def post
    Post.find(params[:id])
  end
end
