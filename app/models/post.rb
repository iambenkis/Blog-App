class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    belong_to  :author, class_name: 'User'
end
