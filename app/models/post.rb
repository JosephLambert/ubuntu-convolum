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
