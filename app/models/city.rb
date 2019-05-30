class City < ApplicationRecord
  include PgSearch
  has_many :user
  has_many :event, dependent: :destroy
  validates :name, presence: true
  validates :country_name, presence: true
  mount_uploader :card_photo, PhotoUploader
  mount_uploader :cover_photo, PhotoUploader

  pg_search_scope :search_by_name_and_country_name,
    against: [ :name, :country_name ],
    using: {
      tsearch: { prefix: true }
    }


  def search_name
    name.downcase.split.join("_")
  end
end
