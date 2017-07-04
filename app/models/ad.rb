class Ad < ApplicationRecord
    mount_uploader :image, AdUploader
end
