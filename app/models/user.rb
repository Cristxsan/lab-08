
class User < ApplicationRecord
  has_many :sent_messages, class_name: "Message", foreign_key: "user_id"
  has_many :sent_chats, class_name: "Chat", foreign_key: "sender_id"
  has_many :received_chats, class_name: "Chat", foreign_key: "receiver_id"
  
  def chats
    Chat.where("sender_id = :user_id OR receiver_id = :user_id", user_id: self.id)
  end

  has_many :received_messages, through: :received_chats, source: :messages

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def name
    "#{first_name} #{last_name}"
  end
end

