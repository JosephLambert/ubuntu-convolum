class Video < ApplicationRecord
    mount_uploader :content, VideoUploader
end
