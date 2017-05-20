class AddColumnsToPhoto < ActiveRecord::Migration[5.0]
    def change
        add_column :photos, :product_id, :integer
        add_column :photos, :image, :string
    end
end
