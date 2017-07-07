class PostsController < ApplicationController
    impressionist
    def show
        @post = Post.find(params[:id])
        impressionist(@post, 'message...')
    end
end
