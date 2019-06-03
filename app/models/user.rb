class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :profile_pic, PhotoUploader
  mount_uploader :cover_photo, PhotoUploader

  has_many :messages, dependent: :destroy

  has_many :interests
  has_many :user_interests
  has_many :attendees, class_name: "Attendee", foreign_key: :attendee_id, dependent: :destroy
  has_many :events, through: :attendees, dependent: :destroy
  has_many :owner_events, class_name: "Event", foreign_key: :owner_id, dependent: :destroy


  belongs_to :current_location, foreign_key: 'current_location_id', class_name: 'City'
  belongs_to :from, foreign_key: 'from_id', class_name: 'City'
  belongs_to :moving_to, foreign_key: 'moving_to_id', class_name: 'City'

end
