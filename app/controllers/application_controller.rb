class ApplicationController < ActionController::Base
    # before_action :set_locale

    protect_from_forgery with: :exception
    def admin_required
        redirect_to '/', alert: 'You are not admin.' unless current_user.admin?
  end

    # def set_locale
    #     if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
    #         session[:locale] = params[:locale]
    #     end
    #     I18n.locale = session[:locale] || I18n.default_locale
    # end

    helper_method :current_cart

    def current_cart
        @current_cart ||= find_cart
    end

    private

    def find_cart
        cart = Cart.find_by(id: session[:cart_id])
        cart = Cart.create if cart.blank?
        session[:cart_id] = cart.id
        cart
    end
end
