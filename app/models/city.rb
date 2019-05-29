class City < ApplicationRecord
  has_many :user
  has_many :event, dependent: :destroy
  validates :name, presence: true
  validates :country_name, presence: true
  mount_uploader :card_photo, PhotoUploader
  mount_uploader :cover_photo, PhotoUploader
end
