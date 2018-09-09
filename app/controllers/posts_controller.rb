class PostsController < ApplicationController
    def index
    end

    def new
      @post = Post.new
    end

    def Create
      @post = Post.new(post_params)
      if post.save
        redirect_to @post
      else
        render "new"
    end

    private

    def post_params
      params.require(:post).permit(:title, :body)
end
