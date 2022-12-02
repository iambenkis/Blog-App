class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    belongs_to  :author, class_name: 'User'

    def update_posts_counter
        posts_counter += 1
    end

    def recent_comments
        comments.order(creat_at: :desc).limit(5)
    end
end
