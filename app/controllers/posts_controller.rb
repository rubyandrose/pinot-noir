class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:post][:content], user_id: current_user.id)

    if @post.save
      redirect_to '/'
    else
      render :new
    end
  end
end
