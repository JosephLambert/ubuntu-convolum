class Aboutus::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '关于我们')
    end

    def show
        @post = Post.find(params[:id])
    end
end
