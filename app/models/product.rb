class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    mount_uploader :attachment, AttachmentUploader

    def publish!
        self.is_hidden = false
        save
  end

    def hide!
        self.is_hidden = true
        save
    end
end
