class Admin::OrdersController < ApplicationController
    layout 'admin'

    before_action :authenticate_user!
    before_action :admin_required

    def index
        @orders = Order.order('id DESC').paginate(page: params[:page], per_page: 10)
    end

    def show
        @order = Order.find(params[:id])
        @product_lists = @order.product_lists
    end

    def ship
        @order = Order.find(params[:id])
        @order.ship!
        OrderMailer.notify_ship(@order).deliver!
        redirect_to :back
    end

    def shipped
        @order = Order.find(params[:id])
        @order.deliver!
        redirect_to :back
    end

    def cancel
        @order = Order.find(params[:id])
        @order.cancel_order!
        OrderMailer.notify_cancel(@order).deliver!
        redirect_to :back
    end

    def return
        @order = Order.find(params[:id])
        @order.return_good!
        redirect_to :back
  end

    def move_up
        @order = Order.find(params[:id])
        @order.move_higher
        redirect_to :back
   end

    def move_down
        @order = Order.find(params[:id])
        @order.move_lower
        redirect_to :back
    end
end
