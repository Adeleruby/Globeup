class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  # has_many :users, as: :receiver_id
  belongs_to :receiver, foreign_key: 'receiver_id', class_name: 'User'
end
