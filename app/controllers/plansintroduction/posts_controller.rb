class Plansintroduction::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '方案介绍').paginate(page: params[:page], per_page: 5)
    end

    def show
        @post = Post.find(params[:id])
    end
end
