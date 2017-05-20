class ProductsController < ApplicationController
    before_action :validate_search_key, only: [:search]
    def index
        @products = Product.order('position ASC').published.recent.paginate(page: params[:page], per_page: 5)
    end

    def show
        @product = Product.find(params[:id])
        if @product.is_hidden
            flash[:warning] = 'This product already archieved'
            redirect_to root_path
    end
    end

    def add_to_cart
        @product = Product.find(params[:id])
        if !current_cart.products.include?(@product)
            current_cart.add_product_to_cart(@product)
            flash[:notice] = "成功将#{@product.title}加入购物车"

        else
            flash[:warning] = '您的购物车内已有此商品'
        end
        redirect_to :back
    end

    def search
        if @query_string.present?
            search_result = Product.ransack(@search_criteria).result(distinct: true)
            @products = search_result.paginate(page: params[:page], per_page: 5)
            srp = Post.ransack(@search_criteria_post).result(distinct: true)
            @posts = srp.paginate(page: params[:page], per_page: 5)
        end
  end

    protected

    def validate_search_key
        @query_string = params[:q].gsub(/\\|\'|\/|\?/, '') if params[:q].present?
        @search_criteria = search_criteria(@query_string)
        @search_criteria_post = search_criteria_post(@query_string)
    end

    def search_criteria(query_string)
        { title_or_description_or_category_cont: query_string }
    end

    def search_criteria_post(query_string)
        { title_or_description_cont: query_string }
    end
end
