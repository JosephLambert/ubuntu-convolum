class MessagesController < ApplicationController
    def index
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)

        if @message.save
            redirect_to root_path
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
