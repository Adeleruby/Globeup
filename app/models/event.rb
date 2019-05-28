class Event < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :attendee
  validates :name, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
end
