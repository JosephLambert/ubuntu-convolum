class Contactus::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '联系我们')
    end

    def show
        @post = Post.find(params[:id])
    end
end
