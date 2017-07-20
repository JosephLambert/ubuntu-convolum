class Wirelessinfo::PostsController < ApplicationController
    def index
        @intro11 = Intro.find(17)
        @intro12 = Intro.find(18)
        @intro13 = Intro.find(19)
        @posts = Post.where(category: '无线知识').published.order('position ASC').limit(12)
        @video = Video.first
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
            flash[:warning] = 'This Post already archieved'
            redirect_to root_path
      end
    end

    def afterindex
        @posts = Post.where(category: '无线知识', subcate: params[:subcate]).published.recent.paginate(page: params[:page], per_page: 15)
        @subcate = if params[:subcate].present?
                       params[:subcate]
                   else
                       '无线知识'
                   end
      end
  end
