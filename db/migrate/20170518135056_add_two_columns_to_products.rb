class AddTwoColumnsToProducts < ActiveRecord::Migration[5.0]
    def change
        add_column :products, :category, :string
        add_column :products, :attachment, :string
    end
end
