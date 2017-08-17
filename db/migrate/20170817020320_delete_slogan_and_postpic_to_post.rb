class DeleteSloganAndPostpicToPost < ActiveRecord::Migration[5.0]
    def change
        remove_column :posts, :slogan
        remove_column :posts, :postpic
    end
end
