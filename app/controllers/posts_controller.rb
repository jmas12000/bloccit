class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each do |post|
      @posts[0].title = "SPAM"
      if post.id % 5 == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
 
end
