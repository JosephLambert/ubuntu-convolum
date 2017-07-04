class CreateAds < ActiveRecord::Migration[5.0]
    def change
        create_table :ads do |t|
            t.string :image
            t.string :link
            t.timestamps
        end
    end
end
