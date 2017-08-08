class Plansintroduction::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '方案').order('position ASC').published
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
            flash[:warning] = 'This Post already archieved'
            redirect_to root_path
      end
    end

    def upvote
        @post = Post.find(params[:id])
        @post.upvote_by current_user
        redirect_to :back
    end
end
