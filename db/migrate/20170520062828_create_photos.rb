class CreatePhotos < ActiveRecord::Migration[5.0]
    def change
        create_table :photos, &:timestamps
    end
end
