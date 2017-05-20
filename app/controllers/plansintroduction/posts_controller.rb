class Plansintroduction::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '方案介绍').order("position ASC").published.paginate(page: params[:page], per_page: 5)
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
        flash[:warning] = "This Post already archieved"
        redirect_to root_path
    end
end
