class City < ApplicationRecord
  has_many :user
  has_many :event
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
