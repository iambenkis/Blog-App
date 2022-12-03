class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    belongs_to  :author, class_name: 'User'

    after_save :update_posts_counter

    validates :title, presence: true, allow_blank: false, allow_nil: false, length: { maximum: 250 }
    validates :comments_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :likes_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    def update_posts_counter
        author.update(posts_counter: author.posts.size)
    end

    def recent_comments
        comments.order(createdn_at: :desc).limit(5)
    end
end
