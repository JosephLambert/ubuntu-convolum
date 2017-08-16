class Netinfo::PostsController < ApplicationController
    def index
        @intro13 = Intro.find(13)
        @intro14 = Intro.find(14)
        @intro15 = Intro.find(15)
        @posts = Post.where(category: '网络知识').published.order('position ASC').limit(12)
        @video = Video.find(2)
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
            flash[:warning] = 'This Post already archieved'
            redirect_to root_path
      end
    end

    def afterindex
        @posts = Post.where(category: '网络知识', subcate: params[:subcate]).published.recent.paginate(page: params[:page], per_page: 15)
        @subcate = if params[:subcate].present?
                       params[:subcate]
                   else
                       '网络知识'
                   end
      end
end
