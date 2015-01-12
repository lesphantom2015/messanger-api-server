class Relation < ActiveRecord::Base
	belongs_to :watcher, class_name: "User", foreign_key: "user1"
	belongs_to :watched, class_name: "User", foreign_key: "user2"
end
