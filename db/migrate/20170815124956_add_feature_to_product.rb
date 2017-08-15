class AddFeatureToProduct < ActiveRecord::Migration[5.0]
    def change
        add_column :products, :feature, :text
    end
end
