class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
	validates :email, presence: true, :uniqueness => true
	validates :normal_password, length: { minimum: 6 }
	has_many :properties
	has_many :comments
	has_many :bookings
	before_create :encrypt_password
	attr_accessor :password

	def encrypt_password
		self.encrypted_password = BCrypt::Password.create(self.password)		
	end	

	def normal_password
		self.password
	end

	def authenticate(password)
		BCrypt::Password.new(self.encrypted_password) == password
	end
end
