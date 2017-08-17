# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: { message: '请输入邮箱' }
    validates :comment, presence: { message: '请输入问题或者建议' }
 end
