class News::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '资讯动态')
    end

    def show
        @post = Post.find(params[:id])
    end
end
