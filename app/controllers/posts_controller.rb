class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.all.order(created_at: :desc)
  end
end
