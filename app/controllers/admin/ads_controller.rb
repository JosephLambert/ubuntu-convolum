class Admin::AdsController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_required

    layout 'admin'
    def index
        @ads = Ad.all
     end

    def show
        @ad = Ad.find(params[:id])
    end

    def new
        @ad = Ad.new
      end

    def create
        @ad = Ad.new(ad_params)
        if @ad.save
            redirect_to admin_ads_path
        else
            render :new
        end
    end

    def edit
        @ad = Ad.find(params[:id])
  end

    def update
        @ad = Ad.find(params[:id])

        if @ad.update(ad_params)

            redirect_to admin_ads_path, notice: 'Update Success'
        else
            render :edit
        end
    end

    def destroy
        @ad = Ad.find(params[:id])

        @ad.destroy
        redirect_to admin_ads_path, alert: 'ad deleted'
    end

    def ad_params
        params.require(:ad).permit(:image, :link)
    end
end
