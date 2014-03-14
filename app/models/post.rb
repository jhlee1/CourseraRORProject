class Post < ActiveRecord::Base
	has_many :comments
	validates :title, :content, presence: true
	validates :title, length: { maximum: 50 }
end
