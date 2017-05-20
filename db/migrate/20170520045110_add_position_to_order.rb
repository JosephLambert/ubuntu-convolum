class AddPositionToOrder < ActiveRecord::Migration[5.0]
    def change
        add_column :orders, :position, :integer

        Order.order(:updated_at).each.with_index(1) do |order, index|
            order.update_column :position, index
        end
    end
end
