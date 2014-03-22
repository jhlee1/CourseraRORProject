class User < ActiveRecord::Base
	has_secure_password

	validates :email, uniqueness: true
	validates :email, presence: true
	validates :name , presence: true
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }



end
