class AddClassToPost < ActiveRecord::Migration[5.0]
    def change
        add_column :posts, :subcate, :string
    end
end
