class Cat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  has_one_attached :photo, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates_presence_of :name, :location, :age, :description, :pay
end
