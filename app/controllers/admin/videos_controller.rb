class Admin::VideosController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_required

    layout 'admin'
    def index
        @videos = Video.order('id ')
    end

    def new
        @video = Video.new
    end

    def show
        @video = Video.find(params[:id])
    end

    def edit
        @video = Video.find(params[:id])
    end

    def create
        @video = Video.new(video_params)

        if @video.save
            redirect_to admin_videos_path
        else
            render :new
        end
    end

    def update
        @video = Video.find(params[:id])

        if @video.update(video_params)

            redirect_to admin_videos_path, notice: 'Update Success'
        else
            render :edit
        end
    end

    def destroy
        @video = Video.find(params[:id])

        @video.destroy
        redirect_to admin_videos_path, alert: 'video deleted'
    end

    private

    def video_params
        params.require(:video).permit(:name, :content)
     end
end
