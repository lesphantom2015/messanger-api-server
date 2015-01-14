class Message < ActiveRecord::Base
	belongs_to :sender, class_name: "User", foreign_key: "user1"
	belongs_to :receiver, class_name: "User", foreign_key: "user2"
	scope :last_ten, -> {order("created_at desc").limit(10)}
	after_create :send_message_to_email

	def send_message_to_email
		UserMailer.new_message(self).deliver
	end
end
