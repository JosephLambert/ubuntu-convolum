class Plansintroduction::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '方案介绍')
    end

    def show
        @post = Post.find(params[:id])
    end
end
