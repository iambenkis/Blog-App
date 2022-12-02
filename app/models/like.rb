class Like < ApplicationRecord
    belong_to :author, class_name: 'User'
    belong_to :post
end
