class Netinfo::PostsController < ApplicationController
    layout 'netinfo_layout'
    def index
        @posts = Post.where(category: '网络知识').published.order('position ASC')
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
            flash[:warning] = 'This Post already archieved'
            redirect_to root_path
      end
    end
end
