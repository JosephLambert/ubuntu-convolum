module OrdersHelper
    def render_order_paid_state(order)
        if order.is_paid?
            '已付款'
        else
            '未付款'
        end
    end

    def render_order_product_price_count(product_price, quantity)
        (product_price * quantity).to_s
  end
end
