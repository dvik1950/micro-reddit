class Post < ActiveRecord::Base

  belongs_to :users
  has_many :comments

  validates :body, presence: true, length: 5..250, allow_blank: false
  validates :title, presence: true, length: 3..30, allow_blank: false
  validates :user_id, presence: true
end
