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

    scope :published, -> { where(is_hidden: false) }
    scope :recent, -> { order('created_at DESC') }
end
