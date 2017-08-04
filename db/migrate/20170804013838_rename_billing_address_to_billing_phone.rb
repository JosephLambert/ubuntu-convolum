class RenameBillingAddressToBillingPhone < ActiveRecord::Migration[5.0]
    def change
        rename_column :orders, :billing_address, :billing_phone
    end
end
