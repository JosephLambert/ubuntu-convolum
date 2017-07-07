# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category    :string
#  is_hidden   :boolean          default("t")
#  position    :integer
#

class Post < ApplicationRecord
    CATEGORY = %w(方案 无线知识 网络知识 关于我们 联系我们).freeze
    validates_inclusion_of :category, in: CATEGORY

    mount_uploader :postpic, PostpicUploader
    acts_as_votable
    is_impressionable

    validates :title, presence: { message: '请填写文章标题' }
    validates :description, presence: { message: '请填写正文' }
    validates :category, presence: { message: '请填写文章分类' }
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
