# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Message.destroy_all
Relation.destroy_all
User.create(nickname: "lesphantom2015", email: "lesphantom2015@outlook.com", age: 25, sex: 0)
User.create(nickname: "fake1", email: "fake1@fake1.com", age: 25, sex: 0)
User.create(nickname: "fake2", email: "fake2@fake2.com", age: 25, sex: 0)
Message.create(user1: 1, user2: 1, message: "msg#1")
Message.create(user1: 1, user2: 2, message: "msg#2")
Message.create(user1: 2, user2: 3, message: "msg#3")
Message.create(user1: 1, user2: 2, message: "msg#4")
Relation.create(user1: 1, user2: 2)
Relation.create(user1: 1, user2: 3)
Relation.create(user1: 2, user2: 1)