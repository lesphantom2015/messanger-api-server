class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :nickname, presence: true
	has_many :in_messages, class_name: "Message", foreign_key: "user2"
	has_many :out_messages, class_name: "Message", foreign_key: "user1"
	has_many :relationships, class_name: "Relation", foreign_key: "user1"
	has_many :watch_list, through: :relationships, source: :watched, dependent: :destroy
	before_create :encrypt_password
	after_create :send_welcome_msg

	def encrypt_password
		#not implemented yet
		true
	end

	def send_welcome_msg
		#not implemented yet
		UserMailer.welcome(self).deliver
		true
	end
end
