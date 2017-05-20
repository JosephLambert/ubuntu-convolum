class Post < ApplicationRecord
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
