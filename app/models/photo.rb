# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#  image      :string
#

class Photo < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :product
end
