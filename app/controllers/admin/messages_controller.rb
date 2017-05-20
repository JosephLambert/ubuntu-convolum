class Admin::MessagesController < ApplicationController
    layout 'admin'

    before_action :authenticate_user!
    before_action :admin_required

    def index
        @messages = Message.order('id DESC').paginate(page: params[:page], per_page: 10)
    end

    def show
        @message = Message.find(params[:id])
    end

    def destroy
        @message = Message.find(params[:id])

        @message.destroy
        redirect_to admin_messages_path, alert: 'message deleted'
    end
end
