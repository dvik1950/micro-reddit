class Comment < ActiveRecord::Base
  belongs_to :posts
  belongs_to :users

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :comment_content, presence: true, allow_blank: false
end
