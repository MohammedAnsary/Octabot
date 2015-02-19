class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	has_many :posts
	has_many :comments
	has_many :replies
end
