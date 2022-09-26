class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w[Fiction Non-Fiction]}

    validate :clickbait

    def clickbait
     errors.add(:title, 'title not click-baitey enough') if title == 'True Facts'
    end

end
