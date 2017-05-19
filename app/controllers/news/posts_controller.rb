class News::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '资讯动态').paginate(page: params[:page], per_page: 5)
    end

    def show
        @post = Post.find(params[:id])
    end
end
