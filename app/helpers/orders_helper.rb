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

    def render_order_status(order)
        case order.aasm_state
        when 'order_placed'
            '请付款以确认订单'
        when 'paid'
            '付款成功，订单准备出货'
        when 'shipping'
            '订单出货中'
        when 'shipped'
            '商品已送达'
        when 'order_cancelled'
            '订单已取消'
        when 'good_returned'
            '订单已退货'
        end
    end
end
