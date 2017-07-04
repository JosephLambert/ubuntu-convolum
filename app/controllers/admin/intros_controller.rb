class Admin::IntrosController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_required

    layout 'admin'
    def index
        @intros = Intro.all
     end

    def show
        @intro = Intro.find(params[:id])
    end

    def new
        @intro = Intro.new
      end

    def create
        @intro = Intro.new(intro_params)
        if @intro.save
            redirect_to admin_intros_path
        else
            render :new
        end
    end

    def edit
        @intro = Intro.find(params[:id])
  end

    def update
        @intro = Intro.find(params[:id])

        if @intro.update(intro_params)

            redirect_to admin_intros_path, notice: 'Update Success'
        else
            render :edit
        end
    end

    def destroy
        @intro = Intro.find(params[:id])

        @intro.destroy
        redirect_to admin_intros_path, alert: 'intro deleted'
    end

    def intro_params
        params.require(:intro).permit(:image, :link)
    end
end
