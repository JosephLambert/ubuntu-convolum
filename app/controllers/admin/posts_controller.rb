class Admin::PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_required

    layout 'admin'
    def index
        @posts = Post.order('position ASC').paginate(page: params[:page], per_page: 10)
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to admin_posts_path
        else
            render :new
        end
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)

            redirect_to admin_posts_path, notice: 'Update Success'
        else
            render :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])

        @post.destroy
        redirect_to admin_posts_path, alert: 'post deleted'
    end

    def publish
        @post = Post.find(params[:id])
        @post.publish!
        redirect_to :back
    end

    def hide
        @post = Post.find(params[:id])
        @post.hide!
        redirect_to :back
    end

    def move_up
        @post = Post.find(params[:id])
        @post.move_higher
        redirect_to :back
   end

    def move_down
        @post = Post.find(params[:id])
        @post.move_lower
        redirect_to :back
    end

    private

    def post_params
        params.require(:post).permit(:title, :slogan, :postpic, :description, :category, :subcate, :is_hidden)
     end
end
