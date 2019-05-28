class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :profile_pic, PhotoUploader
  mount_uploader :cover_photo, PhotoUploader

  has_many :interests

  belongs_to :current_location, foreign_key: 'current_location_id', class_name: 'City'
  belongs_to :from, foreign_key: 'from_id', class_name: 'City'
  belongs_to :moving_to, foreign_key: 'moving_to_id', class_name: 'City'

end
