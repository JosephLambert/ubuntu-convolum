class Contactus::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '联系我们').published.recent
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
        flash[:warning] = "This Post already archieved"
        redirect_to root_path
    end
end
