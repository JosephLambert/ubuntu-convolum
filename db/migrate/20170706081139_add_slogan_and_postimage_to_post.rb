class AddSloganAndPostimageToPost < ActiveRecord::Migration[5.0]
    def change
        add_column :posts, :slogan, :string
        add_column :posts, :postpic, :string
    end
end
