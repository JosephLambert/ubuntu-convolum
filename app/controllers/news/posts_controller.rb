class News::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '资讯动态').published.recent.paginate(page: params[:page], per_page: 5)
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
        flash[:warning] = "This Post already archieved"
        redirect_to root_path
    end
end
