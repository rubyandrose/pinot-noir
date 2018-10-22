class HelloController < ApplicationController
  def index
  	# Add a username ivar (@ sign means accessible externally)
  	@user = current_user
  	@post = Post.first
  end
end
