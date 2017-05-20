class MessagesController < ApplicationController
    def create
        @message = Message.new(message_params)

        if @message.save
            redirect_to :back
            flash[:notice] = '您已成功提交问题或者建议'
        else
            render :new
        end
    end

    private

    def message_params
        params.require(:message).permit(:name, :email, :comment)
    end
end
