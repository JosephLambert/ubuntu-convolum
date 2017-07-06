class Warehouse::ProductsController < ApplicationController
    def index
        @productsaw = Product.where(category: 'aw').order('position ASC').published.recent.paginate(page: params[:page], per_page: 5)
    end

    def show
        @product = Product.find(params[:id])

        if @product.is_hidden
            flash[:warning] = 'This product already archieved'
            redirect_to root_path
      end
    end
end
