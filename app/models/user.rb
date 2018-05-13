class User < ActiveRecord::Base

  has_many :posts
  has_many :comments

validates :username, presence: true, length: 5..50, allow_blank: false, uniqueness: true

end
