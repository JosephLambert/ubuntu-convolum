# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  quantity    :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#  attachment  :string
#  category    :string
#  is_hidden   :boolean          default("t")
#  position    :integer
#

class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    mount_uploader :attachment, AttachmentUploader

    validates :title, presence: { message: '请填写产品名称' }
    validates :description, presence: { message: '请填写产品描述' }
    validates :quantity, presence: { message: '请填写数量' }
    validates :price, presence: { message: '请填写价格' }
    validates :category, presence: { message: '请填写种类' }

    has_many :photos

    acts_as_list

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
