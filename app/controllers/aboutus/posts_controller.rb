class Aboutus::PostsController < ApplicationController
    layout 'aboutus_layout'
    def index
        @posts = Post.where(category: '关于我们').published.order('position ASC')
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
            flash[:warning] = 'This Post already archieved'
            redirect_to root_path
      end
    end
end
