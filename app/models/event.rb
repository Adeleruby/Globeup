class Event < ApplicationRecord
  belongs_to :city
  belongs_to :owner, foreign_key: :owner_id, class_name: "User"
  has_many :users, through: :attendees
  validates :name, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
