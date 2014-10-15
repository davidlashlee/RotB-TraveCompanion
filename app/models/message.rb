class Message < ActiveRecord::Base
 has_many :users, :through => :user_messages
 belongs_to :reciever, class_name: "User", foreign_key: "reciever_id"
 belongs_to :sender, class_name: "User", foreign_key: "sender_id"
end
