class Contactus::PostsController < ApplicationController
    def index
        @posts = Post.where(category: '联系我们').published.order('position ASC')
        @message = Message.new
    end

    def show
        @post = Post.find(params[:id])
        if @post.is_hidden
            flash[:warning] = 'This Post already archieved'
            redirect_to root_path
      end
    end

    def create
        @message = Message.new(message_params)

        if @message.save
            redirect_to :back
            flash[:notice] = '您已成功提交问题或者建议'
        else
            redirect_to :back
            flash[:warning] = '您提交问题或者建议失败'
        end
    end

    private

    def message_params
        params.require(:message).permit(:name, :email, :comment)
    end
end
