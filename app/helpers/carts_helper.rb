module CartsHelper
    def render_cart_total_price(cart)
        cart.total_price
    end

    def render_product_price_count(product, quantity)
        count = (product.price * quantity).to_s
  end
end
